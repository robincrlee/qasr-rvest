# how do we submit a form with radio buttons?
mn_lookup <- html_session("http://www.health.state.mn.us/divs/fpc/directory/providerselect.cfm")
forms <- mn_lookup%>%
html_form()
form2 <- forms[[2]]
form2
form2_updated <- form2 %>%
  set_values(
    ProviderCategory = 'Hospices', 
    WhichArea = NULL, 
    WhichArea = NULL, 
    ProviderToFind = NULL
  )
form2_updated
mn_lookup %>% submit_form(form2_updated)
