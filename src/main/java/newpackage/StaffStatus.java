/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

/**
 *
 * @author THANKGOD
 */
public class StaffStatus {

    private String status;
    private String branch;
    private String department;
    public String jobType;
    private String username;

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
}
