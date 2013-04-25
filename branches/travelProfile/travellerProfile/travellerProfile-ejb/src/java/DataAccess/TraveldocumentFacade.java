/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccess;

import Entities.Traveldocument;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Sparda
 */
@Stateless
public class TraveldocumentFacade extends AbstractFacade<Traveldocument> implements TraveldocumentFacadeLocal {
    @PersistenceContext(unitName = "travellerProfile-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TraveldocumentFacade() {
        super(Traveldocument.class);
    }
    
}
