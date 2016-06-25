package com.neo.dto;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="API_PING_RESULT")
public class PingResult {
	
	@Id
    @Column int keyId;
    @Column boolean result;
    @Column Timestamp timestamp;
    public PingResult() {
        super();
        // TODO Auto-generated constructor stub
    }
    public PingResult(int i, boolean result, Timestamp timestamp) {
        super();
        this.keyId = i;
        this.result = result;
        this.timestamp = timestamp;
    }
    public int getKeyid() {
        return keyId;
    }
    public void setKeyid(int keyid) {
        keyId = keyid;
    }
    public boolean isResult() {
        return result;
    }
    public void setResult(boolean result) {
        this.result = result;
    }
    public Timestamp getTimestamp() {
        return timestamp;
    }
    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

}
