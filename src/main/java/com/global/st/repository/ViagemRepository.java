package com.global.st.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.global.st.model.Viagem;

@Repository
public interface ViagemRepository extends JpaRepository<Viagem, Long>{

	
}
