package Entities;

import Entities.Attachement;
import Entities.Travelerprofile;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2013-08-07T17:48:31")
@StaticMetamodel(Rewardsprogram.class)
public class Rewardsprogram_ { 

    public static volatile ListAttribute<Rewardsprogram, Attachement> attachementList;
    public static volatile SingularAttribute<Rewardsprogram, String> membershiptype;
    public static volatile SingularAttribute<Rewardsprogram, String> description;
    public static volatile SingularAttribute<Rewardsprogram, Integer> idrewardsprogram;
    public static volatile SingularAttribute<Rewardsprogram, Travelerprofile> travelerprofileIdtravelerprofile;
    public static volatile SingularAttribute<Rewardsprogram, String> provider;
    public static volatile SingularAttribute<Rewardsprogram, String> membershipnumber;

}