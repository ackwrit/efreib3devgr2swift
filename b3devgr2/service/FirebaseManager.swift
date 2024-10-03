//
//  FirebaseManager.swift
//  b3devgr2
//
//  Created by Djino Dissingar on 03/10/2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import Firebase


class FirebaseManager {
    
    //attributs
    var auth : Auth
    var cloudFirestore : CollectionReference {
        return Firestore.firestore().collection("UTILISATEURS")
        }
    let shared = FirebaseManager()
    
    
    
    //constructeur
    init(){
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
        }
        auth = Auth.auth()
       
    }
    
    
    
    
    
    
    
    
    
    //methode
    
    //récuperer les infos d'un utilisateur
    func getId() -> String {
        return auth.currentUser?.uid ?? ""
    }
    
    //créer un utilisateur
    func createUserFirebase(uid : String ,datas :[String:Any]){
        let doc = cloudFirestore.document(uid)
        doc.setData(datas)
        
        
    }
    
    //modifier un utilisateur
    func updateUserFirebase(uid : String ,datas :[String:Any]){
        let doc = cloudFirestore.document(uid)
        doc.updateData(datas)
        
        
    }
    
    
}
