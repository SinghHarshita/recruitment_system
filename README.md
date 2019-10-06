## recruitment_system

1. Browse Jobs
    The main html file is browse_jobs.html.
    The filters are coded in the the file browse_jobs_filters.html
    
    AJAX function is to be written to render results on the basis of the search filters.    
    (Note : All JS functions to be written in a separate file or in the footer block)

    JSON structure to be rendered on the front end :
    data['search_job_details'] = {
        0 : {
            'j_id' : __,
            'c_name' : ______,
            "c_email" : ________,
            "c_phone" : ______,
            "c_description" : ______,
            "c_address" : _________,
            "skills" : ("",""...),
            "qualification" : ("",""...),
            "designation" : _______,
            "description" : __________,
            "no_of_vacancies" : ____________,
            "last_date" : ________,
        },
        1 : {.....},
        .
        .
        .
        n : {......},
        "current_date" : ___________, (this is the present date)
    }
    Note : The prefix 'c' indicates company. So c_name would be company name

2. Apply Now
    Clicked from browse_jobs.html
    URL and function in veiws.py : test
    The html page that is rendered is apply_job_q_a.html

    JSON to be rendered : 
    data["types"] = {
        0 : "type0",
        1 : "type1",
        2 : "type2",
        .
        .
        .
    }

    data["questions"] = {
        "type" : {
            "question" : 
            "options" : [],
        }
    }

    When the submit button is clicked, the marks have to calculated as well as the total_rank.
    Right now there is no CV Analysis, so randomise the CV Rank.    

3. View CV
    drive code

4. Edit CV
    CV details to be rendered.... Frontend not yet written
    Figure out how to read the CV and render the text.
    It just has to be put in the editor.

5. Generate CV
    The front end yet has to be written

6. Edit Profile
