# Recruitment System

Company Dashboard Backend

1. View Applicants : 
    HTML page that is rendered : view_applicants.html
    function and url that renders it : company_view_applicants() , view_applicants
    The previous file is new_company_dashboard.html.<br>
    
    JSON structure: <br>


    data["applicants"] = {
        "job_details":{
            "designation" : "",
            "experience" : __,
            "no_of_vacancies" : ___,
            "skills" : ("",""),
            "qualification" : (),
            "last_date" : ___,
            "description" : "",
        },
        "applicant_list":{
            0 : {
                "u_id" : __,
                "a_name" : "",
                "knockout_score" : ___,
                "score" : ____,
                "cv_rank" : ______,
                "total_rank" : ______,
                "status" : _____,
            },
            1 : {

            }
            .
            .
            .
            n : {

            }
        },
        "count" : count_of_applicants
    }

    <br>
    On the client side, a function to generate report i.e. download the table<br>

2. Edit Jobs : <br>
    HTML page that is rendered : company_view_jobs.html
    The function and the url that renders it : company_view_jobs() and view_jobs
    The previous file is new_company_dashboard.html.<br>

    JSON Structure :<br>


    data["edit_jobs"] = {
        0 : {   
            "job_details" : {
                "designation" : "",
                "description" : "",
                "no_of_vacancies": ____,
                "last_date" : ______,
            }
        },
        1 : {
            "requirements" : {
                "skills" : ("","",""),
                "qualification" : ("","",),
                "experience" : _______,
            }
        },
        2 : {
            "knockout" : {
                0 : {
                    "question" : "",
                    "no_of_options" : "",
                    "options" : [],
                    "marks" : [],
                },
                1 : {

                },
                .
                .
                .
                n : {

                },
            }
        },
        3 : {
            "questions" : {
                0 : {
                    "type" : "",
                    "question" : "",
                    "options" : [],
                    "answer" : "",
                    "marks" : [],
                },
                1 : {   },
                .
                .
                .
                n : {  },
            },
			"types" : []
        },
		"job_id" : value,
        },
    }

    

3. Post Jobs
4. Statistics



dwc_otg.lpm_enable=0 console=tty1 console=serial0,115200 root=PARTUUID=38465dba-02 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait quiet splash plymouth.ignore-serial-consoles
