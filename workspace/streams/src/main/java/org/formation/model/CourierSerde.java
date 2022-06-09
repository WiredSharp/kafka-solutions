package org.formation.model;

import org.apache.kafka.common.serialization.Deserializer;
import org.apache.kafka.common.serialization.Serde;
import org.apache.kafka.common.serialization.Serializer;

public class CourierSerde implements Serde<Courier> {
	
	Serializer<Courier> courierSerializer = new JsonSerializer();
	Deserializer<Courier> courierDeserializer = new JsonDeserializer();
	
	

	@Override
	public Serializer<Courier> serializer() {
		// TODO Auto-generated method stub
		return courierSerializer;
	}

	@Override
	public Deserializer<Courier> deserializer() {
		// TODO Auto-generated method stub
		return courierDeserializer;
	}

}
