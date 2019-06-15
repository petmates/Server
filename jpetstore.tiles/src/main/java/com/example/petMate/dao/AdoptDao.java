package com.example.petMate.dao;

import java.util.List;

import com.example.petMate.domain.Adopt;

public interface AdoptDao {
	List<Adopt> selectAdoptList(Adopt adopt);
	
	Adopt selectAdopt(Adopt adopt);
	
	void insetAdopt(Adopt adopt);
	
	void updateAdopt(Adopt adopt);
	
	void deleteAdopt(Adopt adopt);
	
}
