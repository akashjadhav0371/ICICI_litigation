package lcmt.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity(name="trn_completion_documents")
public class CompletionDocuments {
	
	
	
	@Id
	@GeneratedValue
	
	private int comp_doc_id;
	private String comp_original_file_name;
	private String comp_generated_file_name;
	private String comp_licences_id;
	private int comp_last_generated_value_for_contract_id;
	private Date comp_contract_created_date;
	private int comp_doc_added_by;
	
	
	public int getComp_doc_id() {
		return comp_doc_id;
	}
	public void setComp_doc_id(int comp_doc_id) {
		this.comp_doc_id = comp_doc_id;
	}
	public String getComp_original_file_name() {
		return comp_original_file_name;
	}
	public void setComp_original_file_name(String comp_original_file_name) {
		this.comp_original_file_name = comp_original_file_name;
	}
	public String getComp_generated_file_name() {
		return comp_generated_file_name;
	}
	public void setComp_generated_file_name(String comp_generated_file_name) {
		this.comp_generated_file_name = comp_generated_file_name;
	}
	public String getComp_licences_id() {
		return comp_licences_id;
	}
	public void setComp_licences_id(String litigation_id) {
		this.comp_licences_id = litigation_id;
	}
	public int getComp_last_generated_value_for_contract_id() {
		return comp_last_generated_value_for_contract_id;
	}
	public void setComp_last_generated_value_for_contract_id(int comp_last_generated_value_for_contract_id) {
		this.comp_last_generated_value_for_contract_id = comp_last_generated_value_for_contract_id;
	}
	public Date getComp_contract_created_date() {
		return comp_contract_created_date;
	}
	public void setComp_contract_created_date(Date comp_contract_created_date) {
		this.comp_contract_created_date = comp_contract_created_date;
	}
	public int getComp_doc_added_by() {
		return comp_doc_added_by;
	}
	public void setComp_doc_added_by(int comp_doc_added_by) {
		this.comp_doc_added_by = comp_doc_added_by;
	}
	
	

}
