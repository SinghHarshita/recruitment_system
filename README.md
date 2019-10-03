# recruitment_system

Company Dashboard Backend

1. View Applicants : 
    HTML page that is rendered : view_applicants.html
    function and url that renders it : company_view_applicants() , view_applicants
    The previous file is new_company_dashboard.html.

    JSON structure: 
    data["applicants"] = {
        "job_details":{
            "designation" : "",
            "experience" : __,
            "no_of_vacancies" : ___,
            "skills" : ("",""),
            "qualification" : (),
            "last_date" : ___,
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

    On the client side, a function to generate report i.e. download the table

2. Edit Jobs
3. Post Jobs
4. Statistics