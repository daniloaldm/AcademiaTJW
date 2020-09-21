package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Cliente;
import factories.ConnectionFactory;

public class ClienteDAO {
	private Connection connection;
	
	public ClienteDAO() {
		connection = ConnectionFactory.getConnection();
	}
	
	public void cadastrar (Cliente cliente) {
		
		try {
			PreparedStatement st = connection.prepareStatement("INSERT INTO clientes (nome,endereco,telefone,modalidade) VALUES (?,?,?,?)");
			st.setString(1, cliente.getNome());
			st.setString(2, cliente.getEndereco());
			st.setString(3, cliente.getFone());
			st.setString(4, cliente.getModalidade());
			st.executeUpdate();
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void atualizar(Cliente cliente) {
		String sql = "update clientes set  nome=?, endereco=?, telefone=?, modalidade=? where id=?";
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, cliente.getNome());
			st.setString(2, cliente.getEndereco());
			st.setString(3, cliente.getFone());
			st.setString(4, cliente.getModalidade());
			st.setInt(5, cliente.getId());
			st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	public List<Cliente> buscarTodos () {
		List<Cliente> list = new ArrayList<Cliente>();
		
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
	            cliente.setModalidade(rs.getString("modalidade"));
	            list.add(cliente);
	        }
			
			
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<Cliente> buscarModal () {
		List<Cliente> list = new ArrayList<Cliente>();
		
		String sql = "SELECT * FROM modalidade";
			
		try {
			PreparedStatement st = connection.prepareStatement(sql);
			ResultSet rs = st.executeQuery(sql);
			
			while (rs.next()) {
	            Cliente cliente = new Cliente();
	            cliente.setModalidade(rs.getString("type"));
	            list.add(cliente);
	        }
			
			
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public Cliente buscarPorID(int id) {
        Cliente cliente = new Cliente();
        
        try {
            PreparedStatement st = connection.prepareStatement("SELECT * FROM clientes WHERE id=?");
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
            	cliente.setId(rs.getInt("id"));
            	cliente.setNome(rs.getString("nome"));
            	cliente.setEndereco(rs.getString("endereco"));
            	cliente.setFone(rs.getString("telefone"));
            	cliente.setModalidade(rs.getString("modalidade"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
		return cliente;
    }
	
	public void remover(int id) {

		try {
        
            PreparedStatement st = connection.prepareStatement("DELETE FROM clientes WHERE id=?");
            st.setInt(1, id);
            st.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
