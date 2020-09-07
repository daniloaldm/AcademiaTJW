package br.edu.ifce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.edu.ifce.beans.Cliente;
import br.edu.ifce.utils.DbUtil;

public class ClienteDao {
	private Connection connection;
	
	public ClienteDao() {
		connection = DbUtil.getConnection();
	}
	
	public void addCliente (Cliente cliente) {
		String sql = "INSERT INTO clientes (nome,endereco,telefone) VALUES (?,?,?)";

		
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, cliente.getNome());
			st.setString(2, cliente.getEndereco());
			st.setString(3, cliente.getFone());
			st.executeUpdate();
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public List<Cliente> getAllClientes () {
		List<Cliente> listaDeClientes = new ArrayList<Cliente>();
		
		String sql = "SELECT * FROM clientes";
			
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			ResultSet rs = st.executeQuery(sql);
			
			while (rs.next()) {
	            Cliente cliente = new Cliente();
	            cliente.setId(rs.getInt("id"));
	            cliente.setNome(rs.getString("nome"));
	            cliente.setEndereco(rs.getString("endereco"));
	            cliente.setFone(rs.getString("telefone"));
	            listaDeClientes.add(cliente);
	        }
			
			
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listaDeClientes;
	}
	
	public Cliente getClienteById(int id) {
		System.out.println("Buscando cliente de Id: " + id);
        Cliente cliente = new Cliente();
        try {
            PreparedStatement st = connection.prepareStatement("select * from clientes where id=?");
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
            	cliente.setId(rs.getInt("id"));
            	cliente.setNome(rs.getString("nome"));
            	cliente.setEndereco(rs.getString("endereco"));
            	cliente.setFone(rs.getString("telefone"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return cliente;
    }
	public void deleteCliente(int id) {
		System.out.println("Excluindo cliente de id: " + id);
		String sql = "delete from clientes where id=?";
        try {
        
            // Parameters start with 1
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

	public void updateCliente(Cliente cliente) {
		String sql = "update clientes set  nome=?, endereco=?, telefone=? where id=?";
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, cliente.getNome());
			st.setString(2, cliente.getEndereco());
			st.setString(3, cliente.getFone());
			st.setInt(4, cliente.getId());
			st.executeUpdate();
			System.out.println("Atualização com sucesso");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
