/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.park.parkinglot.ejb;

import java.util.HashSet;
import java.util.Set;
import javax.ejb.Stateful;
import javax.enterprise.context.SessionScoped;

/**
 *
 * @author Larisa
 */
@Stateful
@SessionScoped
public class InvoiceBean {
    
    private Set<Integer> userIds = new HashSet<Integer>();
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    public Set<Integer> getUserIds() {
        return userIds;
    }

    public void setUserIds(Set<Integer> userIds) {
        this.userIds = userIds;
    }
}
