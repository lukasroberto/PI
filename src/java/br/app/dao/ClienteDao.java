package br.app.dao;

import br.app.entidades.Cliente;
import java.util.List;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

@RequestScoped
public class ClienteDao {

    @Inject
    private EntityManager entityManager;

    public List<Cliente> listar() {
        return entityManager.createQuery("from Cliente").getResultList();
    }

    public void salvar(Cliente cliente) {
        entityManager.getTransaction().begin();
        entityManager.persist(cliente);
        entityManager.getTransaction().commit();

    }

    public void deletar(Cliente cliente) {
        entityManager.getTransaction().begin();
        entityManager.remove(cliente);
        entityManager.getTransaction().commit();

    }

    public void atualizar(Cliente cliente) {
        entityManager.getTransaction().begin();
        entityManager.merge(cliente);
        entityManager.getTransaction().commit();

    }

    public Cliente find(Long id) {
        return entityManager.find(Cliente.class, id);
    }
}
