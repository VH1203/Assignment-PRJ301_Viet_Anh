/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Admin
 */
public class Subject {

    public int subject_id;
    public String subject_name;
    public float pt1;
    public float pt2;
    public float ws1;
    public float ws2;
    public float pp;
    public float mt;
    public float assignment;
    public float assignment_1;
    public float assignment_2;
    public float cp;
    public float pe;
    public float fe;
    public float te;
    public int student_id;
    public int class_id;
    public int semester_id;
    public String status;
    public int teacher_id;

    public Subject() {
    }
    
    public Subject(int subject_id,float pe, float te) {
        this.subject_id = subject_id;
        this.pe = pe;
        this.te = te;
    }

    public Subject(int subject_id, String subject_name, float pt1, float pt2, float assignment_1, float assignment_2, float pe, float fe) {
        this.subject_id = subject_id;
        this.subject_name = subject_name;
        this.pt1 = pt1;
        this.pt2 = pt2;
        this.assignment_1 = assignment_1;
        this.assignment_2 = assignment_2;
        this.pe = pe;
        this.fe = fe;
    }
    
    
    public Subject(int subject_id, float pt1, float pt2, float assignment_1, float assignment_2, float cp, float fe) {
        this.subject_id = subject_id;
        this.pt1 = pt1;
        this.pt2 = pt2;
        this.assignment_1 = assignment_1;
        this.assignment_2 = assignment_2;
        this.cp = cp;
        this.fe = fe;
    }

    
    public Subject(int subject_id,float pt1, float pt2, float pp, float mt, float fe) {
        this.subject_id = subject_id;
        this.pt1 = pt1;
        this.pt2 = pt2;
        this.pp = pp;
        this.mt = mt;
        this.fe = fe;
    }
    
    
    
    public Subject(int subject_id,float pt1, float pt2, float ws1, float ws2, float assignment, float pe, float fe) {
        this.subject_id = subject_id;
        this.pt1 = pt1;
        this.pt2 = pt2;
        this.ws1 = ws1;
        this.ws2 = ws2;
        this.assignment = assignment;
        this.pe = pe;
        this.fe = fe;
    }
    
       
    

    public Subject(int subject_id, String subject_name, float pt1, float pt2, float fe, int student_id, int class_id, int semester_id, String status, int teacher_id) {
        this.subject_id = subject_id;
        this.subject_name = subject_name;
        this.pt1 = pt1;
        this.pt2 = pt2;
        this.fe = fe;
        this.student_id = student_id;
        this.class_id = class_id;
        this.semester_id = semester_id;
        this.status = status;
        this.teacher_id = teacher_id;
    }

    public float getCp() {
        return cp;
    }

    public void setCp(float cp) {
        this.cp = cp;
    }
    
    
    public float getWs1() {
        return ws1;
    }

    public void setWs1(float ws1) {
        this.ws1 = ws1;
    }

    public float getWs2() {
        return ws2;
    }

    public void setWs2(float ws2) {
        this.ws2 = ws2;
    }

    public float getPp() {
        return pp;
    }

    public void setPp(float pp) {
        this.pp = pp;
    }

    public float getMt() {
        return mt;
    }

    public void setMt(float mt) {
        this.mt = mt;
    }

    public float getAssignment() {
        return assignment;
    }

    public void setAssignment(float assignment) {
        this.assignment = assignment;
    }

    public float getAssignment_1() {
        return assignment_1;
    }

    public void setAssignment_1(float assignment_1) {
        this.assignment_1 = assignment_1;
    }

    public float getAssignment_2() {
        return assignment_2;
    }

    public void setAssignment_2(float assignment_2) {
        this.assignment_2 = assignment_2;
    }

    public float getPe() {
        return pe;
    }

    public void setPe(float pe) {
        this.pe = pe;
    }

    public float getTe() {
        return te;
    }

    public void setTe(float te) {
        this.te = te;
    }

    public int getSubject_id() {
        return subject_id;
    }

    public void setSubject_id(int subject_id) {
        this.subject_id = subject_id;
    }

    public String getSubject_name() {
        return subject_name;
    }

    public void setSubject_name(String subject_name) {
        this.subject_name = subject_name;
    }

    public float getPt1() {
        return pt1;
    }

    public void setPt1(float pt1) {
        this.pt1 = pt1;
    }

    public float getPt2() {
        return pt2;
    }

    public void setPt2(float pt2) {
        this.pt2 = pt2;
    }

    public float getFe() {
        return fe;
    }

    public void setFe(float fe) {
        this.fe = fe;
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public int getClass_id() {
        return class_id;
    }

    public void setClass_id(int class_id) {
        this.class_id = class_id;
    }

    public int getSemester_id() {
        return semester_id;
    }

    public void setSemester_id(int semester_id) {
        this.semester_id = semester_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(int teacher_id) {
        this.teacher_id = teacher_id;
    }

    @Override
    public String toString() {
        return "Subject{" + "subject_id=" + subject_id + ", subject_name=" + subject_name + ", pt1=" + pt1 + ", pt2=" + pt2 + ", ws1=" + ws1 + ", ws2=" + ws2 + ", pp=" + pp + ", mt=" + mt + ", assignment=" + assignment + ", assignment_1=" + assignment_1 + ", assignment_2=" + assignment_2 + ", cp=" + cp + ", pe=" + pe + ", fe=" + fe + ", te=" + te + ", student_id=" + student_id + ", class_id=" + class_id + ", semester_id=" + semester_id + ", status=" + status + ", teacher_id=" + teacher_id + '}';
    }

   

}
