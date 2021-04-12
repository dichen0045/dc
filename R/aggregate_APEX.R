#' @title colclasses_APEX
#' @description
#' create a vector which contains all the variable names and variable class appearing in APEX dictionary
#' @import methods
#'
#' @export


colclasses_APEX<-function()
{

  # Because of a specific date format, the standard instruction using "Date" is not working here.
  # Therefore, we need to define first the date format as we want it to be:
  setClass("Date.APEX")
  setAs("character","Date.APEX", function(from) as.Date(from, format="%d/%m/%Y"))


  # create empty vector
  c<-c()

  # following lines create from APEX data dictionary with Excel Formula
  # to extract upcase variable name (A2) and put class according to Type (C2) except if code/detail (D2) contains INTEGER
  # ="c['"&UPPER(A2)&"']='"&IF(ISERROR(FIND("INTEGER";UPPER(D2)));UPPER(C2);"INTEGER")&"'"

  # Policy file
  c['Acceleration_Risk_Type']='CODE'
  c['Acceleration_Benefit']='CODE'
  c['Add_Rating_Upper_Band_1']='NUMERIC'
  c['Add_Rating_Upper_Band_2']='NUMERIC'
  c['Additive_Rated_Status']='CODE'
  c['Age_at_Commencement']='INTEGER'
  c['Age_at_Commencement_Upper_Band']='INTEGER'
  c['Annual_Limit']='CODE'
  c['Annual_Limit_Amount']='NUMERIC'
  c['Annual_Salary_Upper_Band']='INTEGER'
  c['Benefit_Change_Rate_Annual']='NUMERIC'
  c['Benefit_Change_Frequency']='CODE'
  c['Benefit_Change_Rate_Type']='CODE'
  c['Benefit_Change_R_Upper_Band_SCOR']='NUMERIC'
  c['Benefit_Term_Type']='CODE'
  c['Benefit_Term_Years']='INTEGER'
  c['Benefit_Term_Years_Upper_Band']='INTEGER'
  c['Benefit_Max_Age']='INTEGER'
  c['Benefit_End_Date']='DATE'
  c['Benefit_Profile']='CODE'
  c['Benefit_type']='FREE TEXT'
  c['Benefit_geographic_coverage']='CODE'
  c['BMI_Upper_Band']='NUMERIC'
  c['Child_Benefit']='CODE'
  c['Child_Benefit_Type']='CODE'
  c['CI_TPD_benefit']='CODE'
  c['Claim_Payment_Term_Type']='CODE'
  c['Claim_Payment_Term_Years']='INTEGER'
  c['Claim_Payment_Term_Years_mixed']='FREE TEXT'
  c['Claim_Payment_Max_Age']='NUMERIC'
  c['Claim_Payment_End_Date']='DATE'
  c['Claim_Payment_Change_Rate_Annual']='NUMERIC'
  c['Claim_Payment_Change_Rate_Type']='CODE'
  c['Claim_Payment_Change_Rate_Up_Bnd']='NUMERIC'
  c['Claim_Payment_Mode']='CODE'
  c['Claim_payment_frequency']='CODE'
  c['Claim_Payment_Deferred_Period']='INTEGER'
  c['Claim_Payment_Deferred_Period_Mx']='FREE TEXT'
  c['Claim_Currency']='CODE'
  c['Claim_sequence']='INTEGER'
  c['Country_of_Residence']='CODE'
  c['Commission_earning_duration']='CODE'
  c['Distribution_Channel']='CODE'
  c['Distribution_Channel_detail']='FREE TEXT'
  c['Distributor_Group_Name']='FREE TEXT'
  c['Distributor_Name']='FREE TEXT'
  c['Date_of_Commencement']='DATE'
  c['Date_of_Event_Incurred']='DATE'
  c['Date_of_Event_Notified']='DATE'
  c['Date_of_Event_Settled']='DATE'
  c['Date_of_Event_Paid']='DATE'
  c['Date_of_First_Event_Incurred']='DATE'
  c['Dependent_type']='CODE'
  c['Education_level']='CODE'
  c['Employment_Status']='CODE'
  c['Life_ID']='FREE TEXT'
  c['Date_of_Birth']='DATE'
  c['Region_of_Residence']='CODE'
  c['Residence_class']='FREE TEXT'
  c['Marital_status']='CODE'
  c['Number_of_children']='INTEGER'
  c['Gender']='CODE'
  c['Occupational_status']='CODE'
  c['Occupation_Class_Client']='INTEGER'
  c['Occupation_Class_SCOR']='INTEGER'
  c['Occupation_group_SCOR']='FREE TEXT'
  c['Date_of_last_medical_selection']='DATE'
  c['Smoker_status']='CODE'
  c['Smoker_status_detailed']='FREE TEXT'
  c['Policy_ID']='FREE TEXT'
  c['Group_ID']='FREE TEXT'
  c['Industry_Sector_code']='CODE'
  c['Industry_Sector_detail']='FREE TEXT'
  c['Level_term']='CODE'
  c['Level_term_years']='INTEGER'
  c['Underwriting_method']='CODE'
  c['Underwriting_provider']='CODE'
  c['Med_Risk_Class_Client']='CODE'
  c['Med_Risk_Class_SCOR']='CODE'
  c['Med_Risk_Class_Other']='FREE TEXT'
  c['Socio_economic_class_scor']='INTEGER'
  c['Socio_economic_class_client']='INTEGER'
  c['Year_of_commencement_upper_band']='INTEGER'
  c['First_UWY']='INTEGER'
  c['Subfund']='FREE TEXT'
  c['Cession_type']='CODE'
  c['Conversion_policy']='CODE'
  c['Duration_at_conversion']='INTEGER'
  c['Risk_Amount_Weighting']='NUMERIC'
  c['Count_Weighting']='NUMERIC'
  c['Benefit_ID']='FREE TEXT'
  c['Main_Risk_Type']='CODE'
  c['Sub_Risk_Type']='CODE'
  c['Insurance_Premium_Profile']='CODE'
  c['Insurance_Premium_Frequency']='CODE'
  c['Convertibility_Option']='CODE'
  c['Renewal_Option']='CODE'
  c['Face_Amount_Upper_Band_Client']='NUMERIC'
  c['Face_Amount_Upper_Band_SCOR']='NUMERIC'
  c['Guaranteed_Insurability_Option']='CODE'
  c['Benefit_exclusions']='CODE'
  c['Rated_Status']='CODE'
  c['Multiplicative_Rated_Status']='CODE'
  c['Joint_Life_Type']='CODE'
  c['Segment_Type']='CODE'
  c['Waiting_Period_1']='INTEGER'
  c['Waiting_Period_1_Type']='CODE'
  c['Waiting_Period_1_Freq']='CODE'
  c['Waiting_Period_2']='INTEGER'
  c['Waiting_Period_2_Type']='CODE'
  c['Waiting_Period_2_Freq']='CODE'
  c['Waiting_Period_3']='INTEGER'
  c['Waiting_Period_3_Type']='CODE'
  c['Waiting_Period_3_Freq']='CODE'
  c['Perm_Mult_Extra_Rating_1']='NUMERIC'
  c['Temp_Mult_Extra_Rating_1']='NUMERIC'
  c['Temp_Mult_Extra_Rating_Term_1']='INTEGER'
  c['Perm_Add_Extra_Rating_1']='NUMERIC'
  c['Temp_Add_Extra_Rating_1']='NUMERIC'
  c['Temp_Add_Extra_Rating_Term_1']='INTEGER'
  c['Perm_Mult_Extra_Rating_2']='NUMERIC'
  c['Temp_Mult_Extra_Rating_2']='NUMERIC'
  c['Temp_Mult_Extra_Rating_Term_2']='INTEGER'
  c['Perm_Add_Extra_Rating_2']='NUMERIC'
  c['Temp_Add_Extra_Rating_2']='NUMERIC'
  c['Temp_Add_Extra_Rating_Term_2']='INTEGER'
  c['Mult_Rating_Upper_Band_1']='NUMERIC'
  c['Mult_Rating_Upper_Band_2']='NUMERIC'
  c['Premium_discount_rate']='NUMERIC'
  c['Buyback_Option']='CODE'
  c['Buyback_Option_Type']='CODE'
  c['Disability_definition']='CODE'
  c['DI_Indemnity_Type']='CODE'
  c['Disability_severities_covered']='CODE'
  c['Disability_degree_min_covered']='NUMERIC'
  c['DI_salary_ratio_upper_band']='NUMERIC'
  c['Disability_permanency_covered']='CODE'
  c['Payment_Deferred_Period_Freq']='CODE'
  c['Disability_prognosis_horizon']='NUMERIC'
  c['Disability_prognosis_horizon_frq']='CODE'
  c['TPD_definition']='CODE'
  c['LTC_definition_total']='CODE'
  c['LTC_definition_total_detail']='FREE TEXT'
  c['LTC_definition_partial']='CODE'
  c['LTC_definition_partial_detail']='FREE TEXT'
  c['LTC_definition_light']='CODE'
  c['LTC_definition_light_detail']='FREE TEXT'
  c['LTC_severities_covered']='CODE'
  c['LTC_severity']='CODE'
  c['Benefit_deductible_amount']='NUMERIC'
  c['Benefit_copay']='CODE'
  c['Benefit_copay_ratio']='NUMERIC'
  c['Status_End_Current_Condition']='CODE'
  c['Status_Begin_Current_Condition']='CODE'
  c['Date_of_End_Current_Condition']='DATE'
  c['Date_of_Begin_Current_Condition']='DATE'
  c['Risk_Amount_Insurer']='NUMERIC'
  c['Risk_Amount_Reinsurer']='NUMERIC'
  c['Acceleration_Risk_Amount_Reinsur']='NUMERIC'
  c['Acceleration_Risk_Amount_Insurer']='NUMERIC'
  c['Annual_Premium_Insurer']='NUMERIC'
  c['Annual_Premium_Reinsurer']='NUMERIC'
  c['Level_term_status']='CODE'
  c['Paid_up_status']='CODE'
  c['Buyback_status']='CODE'
  c['Contingent_cover_status']='CODE'
  c['Retro_Legal_Entity_status']='CODE'
  c['Retro_Legal_Entity']='CODE'
  c['Retro_Legal_Entity_Omega_code']='CODE'
  c['Retro_Risk_Amount_Share']='NUMERIC'
  c['Retro_share_type']='CODE'
  c['Event_ID']='FREE TEXT'
  c['Type_of_Event']='CODE'
  c['Date_of_claim_commencement']='DATE'
  c['Claim_commencement_policy_year']='INTEGER'
  c['Cause_of_Event_1']='CODE'
  c['Cause_of_Event_1_det']='CODE'
  c['Cause_of_Event_1_other']='FREE TEXT'
  c['Cause_of_Event_2']='CODE'
  c['Cause_of_Event_2_det']='CODE'
  c['Cause_of_Event_2_other']='FREE TEXT'
  c['Terminal_Illness_claim']='CODE'
  c['CI_condition_claimed']='CODE'
  c['Claim_Status']='CODE'
  c['Event_adjustment']='NUMERIC'
  c['Settlement_Decision']='CODE'
  c['Ex_gratia_claim']='CODE'
  c['Expenses_included']='CODE'
  c['Event_Amount_Insurer']='NUMERIC'
  c['Event_Amount_Reinsurer']='NUMERIC'
  c['Number_ADL']='INTEGER'
  c['location_of_care']='CODE'
  c['Disability_severity']='CODE'
  c['Disability_degree']='NUMERIC'
  c['Disability_degree_occup']='NUMERIC'
  c['Disability_degree_funct']='NUMERIC'
  c['Disability_degree_Upper_Bd']='NUMERIC'
  c['Disability_degree_occup_Upper_Bd']='NUMERIC'
  c['Disability_degree_funct_Upper_Bd']='NUMERIC'
  c['Disability_permanency']='CODE'
  c['Exposure_or_Event']='CODE'
  c['Reporting_year']='INTEGER'
  c['Reporting_quarter']='CODE'
  c['Reporting_month']='CODE'
  c['Product_ID']='FREE TEXT'
  c['Data_Line']='INTEGER'
  c['Policy_dummy_text_1']='FREE TEXT'
  c['Policy_dummy_text_2']='FREE TEXT'
  c['Policy_dummy_text_3']='FREE TEXT'
  c['Policy_dummy_text_4']='FREE TEXT'
  c['Policy_dummy_text_5']='FREE TEXT'
  c['Policy_dummy_value_1']='NUMERIC'
  c['Policy_dummy_value_2']='NUMERIC'
  c['Policy_dummy_value_3']='NUMERIC'
  c['Policy_dummy_value_4']='NUMERIC'
  c['Policy_dummy_value_5']='NUMERIC'
  c['Renewal_status']='CODE'
  c['Nationality']='CODE'
  c['Event_deductible']='NUMERIC'
  c['Benefit_deductible']='CODE'
  c['Event_copay_ratio']='NUMERIC'
  c['Event_amount_invoiced']='NUMERIC'
  c['Event_amount_allowed']='NUMERIC'
  c['Event_amount_social_security']='NUMERIC'
  c['Event_amount_other_covers']='NUMERIC'
  c['Event_amount_out_of_pocket']='NUMERIC'
  c['Premium_tax_rate']='NUMERIC '
  c['Health_Claim_benefit_type']='CODE'
  c['Health_Claim_benefit_type_detail']='FREE TEXT'
  c['Treatment_type']='FREE TEXT'
  c['Country_of_treatment']='CODE'
  c['Region_of_treatment']='CODE'
  c['Location_of_Treatment']='FREE TEXT'
  c['Health_Provider_Name']='FREE TEXT'
  c['Health_Provider_Category']='FREE TEXT'
  c['Date_of_health_service_start']='DATE'
  c['Date_of_health_service_end']='DATE'
  c['Inpatient_Daily_payment']='NUMERIC'
  c['Lifetime_Limit']='CODE'
  c['Lifetime_Limit_Amount']='NUMERIC'
  c['Family_Coverage_Scope']='CODE'
  c['Event_Amount_Upper_Band']='NUMERIC'

  # product file
  c['Age_differentiation']='CODE'
  c['Age_at_Commencement_definition']='CODE'
  c['Client_Risk_Carrier_Name']='CODE'
  c['Commercial_Client_Name']='CODE'
  c['Distribution_brand_name']='FREE TEXT'
  c['Client_group']='CODE'
  c['Client_group_Omega_code']='CODE'
  c['Client_segmentation']='CODE'
  c['Client_grouping_other']='FREE TEXT'
  c['Client_Omega_code']='CODE'
  c['Client_code']='CODE'
  c['Client_country']='CODE'
  c['Deal_ID']='CODE'
  c['Quote_Number_Everest']='FREE TEXT'
  c['Treaty_Number_Omega']='CODE'
  c['Treaty_Number_Everest']='FREE TEXT'
  c['Treaty_Number_Everest_no_Amm']='FREE TEXT'
  c['UWY']='INTEGER'
  c['Business_Area']='CODE'
  c['Portfolio_Origin']='CODE'
  c['Currency']='CODE'
  c['Legal_Entity']='CODE'
  c['Legal_Entity_code']='CODE'
  c['Reinsurance_Type']='CODE'
  c['Product_ID']='FREE TEXT'
  c['Data_Line']='INTEGER'
  c['Product_start_date']='DATE'
  c['Product_end_date']='DATE'
  c['Type_of_policy']='CODE'
  c['Product_type']='CODE'
  c['Loan_Type']='CODE'
  c['compulsory_insurance']='CODE'
  c['Product_type_detail']='FREE TEXT'
  c['Product_name']='FREE TEXT'
  c['Gender_differentiation']='CODE'
  c['Smoker_differentiation']='CODE'
  c['Return_of_Premium']='CODE'
  c['Secondary_Guarantee']='CODE'
  c['Mortality_definition']='CODE'
  c['Survival_period']='INTEGER'
  c['Terminal_Illness_benefit']='CODE'
  c['Med_risk_class_structure_client']='CODE'
  c['Med_risk_class_structure_SCOR']='CODE'
  c['Occ_risk_class_structure_client']='INTEGER'
  c['Socio_eco_risk_class_structure']='INTEGER'
  c['Min_Age_at_commencement']='INTEGER'
  c['Max_Age_at_commencement']='INTEGER'
  c['Max_Benefit_Expiry_Age']='INTEGER'
  c['Min_Face_Amount']='NUMERIC'
  c['Max_Face_Amount']='NUMERIC'
  c['Min_Benefit_Term']='INTEGER'
  c['Max_Benefit_Term']='INTEGER'
  c['Insur_Premium_Guarantee_Type']='CODE'
  c['Insur_Premium_Guarantee_Term_Yrs']='INTEGER'
  c['Post_Level_Term_Structure']='CODE'
  c['Reinsur_Premium_Guarantee_Type']='CODE'
  c['Reins_Premium_Guarantee_Term_Yrs']='INTEGER'
  c['Rating_type_1']='CODE'
  c['Rating_type_2']='CODE'
  c['First_snapshot']='CODE'
  c['Portfolio_inception_date']='DATE'
  c['Product_dummy_text_1']='FREE TEXT'
  c['Product_dummy_text_2']='FREE TEXT'
  c['Product_dummy_text_3']='FREE TEXT'
  c['Product_dummy_value_1']='NUMERIC'
  c['Product_dummy_value_2']='NUMERIC'
  c['Product_dummy_value_3']='NUMERIC'

  # Other adjustments --- ATTENTION: column D--> E for details
  c['Age_attained']='NUMERIC'
  c['Age_attained_definition']='CODE'
  c['Age_at_Commencement_Definition']='CODE'
  c['Actual_adj']='NUMERIC'
  c['Calendar_Year']='INTEGER'
  c['Data_Line']='INTEGER'
  c['Duration_Year']='INTEGER'
  c['Dimensions']=''
  c['Exposure_adj']='NUMERIC'
  c['Insurance_age_attained']='NUMERIC'
  c['Insurance_age_attained_def']='CODE'
  c['Result_Metric']='CODE'
  c['Year_of_Commencement']='INTEGER'
  c['Year_of_commencement']='INTEGER'





  ### Additional APEX result variables
  # Based on EA Data Dictionary result data
  c['Decrement']='CODE'
  c['Decrement_id']='CODE'
  c['Attained_Age_Definition']='CODE'
  c['Study_ID']='CODE'
  c['Run_ID']='NUMERIC'
  c['Policy_Duration_Year']='NUMERIC'
  c['Policy_Duration_Month']='NUMERIC'
  c['Claim_Duration_Year']='NUMERIC'
  c['Claim_Duration_Month']='NUMERIC'
  c['Policy_duration_year_claim']='NUMERIC'
  c['Actual_Count']='NUMERIC'
  c['Exposure_Count_Initial']='NUMERIC'
  c['Expected_Count_1']='NUMERIC'
  c['Expected_1_boundary']='CODE'
  c['Actual_Amount']='NUMERIC'
  c['Exposure_Amount_Initial']='NUMERIC'
  c['Exposure_Amount_Initial_squared']='NUMERIC'
  c['Expected_Amount_1']='NUMERIC'

  c['Cause_of_claimant_status']='CODE'
  c['Cause_of_claimant_status_det']='CODE'


  # replace
  c[c=='FREE TEXT']<-"character"
  c[c=='CODE']<-"factor"
  # Variables to be imported as "Date"
  # use custom class defined above
  c[c=='DATE']<-"Date.APEX"
  c[c=='INTEGER']<-"integer"
  c[c=='NUMERIC']<-"numeric"

  c

}

#' @title levelCase_APEX
#' @description
#' convert letter case to the standard APEX format
#' @param Data Apex format data
#' @import methods
#'
#' @export
levelCase_APEX<-function(Data){

  if ("Gender" %in% names(Data)){
    levels(Data$Gender)[toupper(levels(Data$Gender))=='FEMALE'] <- 'Female'
    levels(Data$Gender)[toupper(levels(Data$Gender))=='MALE'] <- 'Male'
  }

  if ("Smoker_status" %in% names(Data)){
    levels(Data$Smoker_status)[toupper(levels(Data$Smoker_status))=='SMOKER'] <- 'Smoker'
    levels(Data$Smoker_status)[toupper(levels(Data$Smoker_status))=='NON SMOKER'] <- 'Non Smoker'
  }

  return(Data)

}






#' @title aggregate_APEX
#'
#' @description aggregate APEX result by a list of variables
#'
#' @param result_APEX Apex result
#' @param group_by_vars variable need to be aggregated
#'
#' @return aggregated APEX result
#' @import dplyr
#'
#'
#' @export




aggregate_APEX <- function(result_APEX, group_by_vars){


column_approved <- intersect(names(result_APEX),group_by_vars)

aggregat_apex <- result_APEX %>%
  mutate(Count=1) %>%
  group_by_at(vars(one_of(column_approved))) %>%
  summarise_at(vars(starts_with(c("Exposure_Amount", "Exposure_count", "Exposure_Premium", "Actual_Amount",
                                  "Actual_Count", "Expected_Amount", "Expected_count", "Expected_Premium",
                                  "Count"))), sum)


  return(aggregat_apex)

}


#' @title merge_APEX
#'
#' @description merge product and policy file
#'
#' @param Product product dataframe which is loaded by read_APEX
#' @param Policy policy dataframe which is loaded by read_APEX
#'
#' @return merged APEX dataframe
#' @import dplyr
#'
#'
#' @export
# Function to merge both product and policy file.
# Use read_APEX function to use this function, Make sure to give the name the product and policy file to call this function.
# Consider using read_APEX(myfile, Product_file_name=xyz,Policy_file_name=abc)

merge_APEX<- function(Product,Policy){
  if(is.null(Product)==TRUE |is.null(Policy)==TRUE){
    print("Please enter Product/Policy file")

  }
  else
  {
    Merged_file=merge(Product,Policy, by="Product_ID",all=F,all.y=T)
  }
  return(Merged_file)
}


#' @title read_APEX
#' @description
#' read csv or excel in APEX format
#' @import rlang
#' @import methods
#' @import rio
#' @import tidyr
#' @import readxl
#' @import stringr
#' @import utils
#' @param myfile filename to be read
#' @param encoding default:"UTF-8" encoding to be assumed for input strings: "unknown", "latin1", "UTF-8" - important for German "Umlaut"!
#' @param case_template default: "APEX", or any function like "toupper" or "tolower"
#' @param sheet  For Excel : Sheet to read in Excel file. Either a string (the name of the sheet) or an integer
#' @param guess_max  For Excel : Maximum number of rows to use for guessing column types
#' @param Product_file_name Product file to be read and merged
#' @param ... extra named argument passed to read_csv or read_excel
#' @export


read_APEX <- function(myfile=NULL ,
                      encoding = "UTF-8" ,
                      case_template = "APEX",
                      sheet = 1,
                      guess_max = 50000,

                      Product_file_name=NULL,
                      ...
)
{
#function1: read csv
read.APEX_csv <- function(myfile ,
                          encoding = "UTF-8" ,
                          case_template = "APEX",
                          ...
)
{

  #get names (actually, just need to find out the case-sensitive names used in this file)
  Data<-read.table(myfile, # filename to be read
                   nrows = 10, # number of rows to be read (remove option to read entire data set)
                   header = TRUE, # default value is FALSE (logical value indicating whether the file contains the names of the variables as its first line)
                   sep = ";", # common delimiters are: "", "," (comma), ";" (semi-colon), "\t" (tab)
                   dec = ".", # decimal points in number - use "." for 1000 = 1.000 or "," for 1000 = 1,000
                   na.strings = c("", " ", "-", "NA", "NaN", "#N/A"), # character vector of strings which are to be interpreted as NA values
                   fileEncoding = "",
                   encoding = encoding)

  # get dictionary
  cc<-colclasses_APEX()
  ccAPEX <- cc
  #Match the used names against the Data Dictionary
  ccindex<-match(toupper(names(cc)),toupper(names(Data)))
  #use the names as used in file
  names(cc)<-names(Data)[ccindex]
  #select only matched variables present in file
  cc<-cc[which(!is.na(ccindex))]

  # Read (full) data with classes
  Data <- read.table(myfile, # filename to be read
                     #nrows = 10, # number of rows to be read (remove option to read entire data set)
                     header = TRUE, # default value is FALSE (logical value indicating whether the file contains the names of the variables as its first line)
                     sep = ";", # common delimiters are: "", "," (comma), ";" (semi-colon), "\t" (tab)
                     dec = ".", # decimal points in number - use "." for 1000 = 1.000 or "," for 1000 = 1,000
                     na.strings = c("", " ", "-", "NA", "NaN", "#N/A"), # character vector of strings which are to be interpreted as NA values
                     colClasses = cc,
                     fileEncoding = "",
                     encoding = encoding, ...)

  # translate names according to case_template
  if(case_template=="APEX"){
    dataindex<-match(toupper(names(Data)),toupper(names(ccAPEX)))
    names(Data)<-if_else(is.na(dataindex),names(Data),names(ccAPEX)[dataindex])
  } else {
    names(Data)<-call(case_template,names(Data))
  }

  # Remove differences in letter casings for level names
  if(case_template=="APEX"){
    Data <- levelCase_APEX(Data)
  }

  # return Data
  Data
}



# function2 read excel
read.APEX_excel <- function(myfile ,
                            encoding = "UTF-8" , # encoding to be assumed for input strings: "unknown", "latin1", "UTF-8" - important for German "Umlaut"!
                            case_template = "APEX", # "APEX", or any function like "toupper" or "tolower"
                            sheet = 1, # Sheet to read. Either a string (the name of the sheet) or an integer
                            guess_max = 50000, # Maximum number of rows to use for guessing column types
                            ...
)
{


  #get names (actually, just need to find out the case-sensitive names used in this file)
  Data<-read_excel(myfile, # filename to be read
                   sheet, # Sheet to read. Either a string (the name of the sheet) or an integer
                   n_max = 10, # number of rows to be read (remove option to read entire data set)
                   col_names = TRUE, # TRUE to use the first row as column
                   na = c("", " ", "-", "NA", "NaN", "#N/A")) # character vector of strings which are to be interpreted as NA values
  # No equivalent for fileEncoding
  # No equivalent for encoding


  # get dictionary
  ccAPEX<-colclasses_APEX()
  cc<-ccAPEX
  #Match the used names against the Data Dictionary
  ccindex<-match(toupper(names(cc)),toupper(names(Data)))
  #use the names as used in file
  names(cc)<-names(Data)[ccindex]
  #select only matched variables present in file
  cc<-cc[which(!is.na(ccindex))]


  Data<-read_excel(myfile, # filename to be read
                   sheet, # Sheet to read. Either a string (the name of the sheet) or an integer
                   #n_max = 10, # number of rows to be read (remove option to read entire data set)
                   col_names = TRUE, # TRUE to use the first row as column
                   guess_max = guess_max,
                   na = c("", " ", "-", "NA", "NaN", "#N/A")) # character vector of strings which are to be interpreted as NA values
  # No equivalent for fileEncoding
  # No equivalent for encoding
  # col_types limited to specific types => Transformation to correct type after the reading


  # transform type (except Date)
  Data[names(cc[cc=='factor'])] <- lapply(Data[names(cc[cc=='factor'])], factor)
  Data[names(cc[cc=='character'])] <- lapply(Data[names(cc[cc=='character'])], as.character)
  Data[names(cc[cc=='numeric'])] <- lapply(Data[names(cc[cc=='numeric'])], as.numeric)

  #Data[names(cc[cc=='integer'])] <- lapply(Data[names(cc[cc=='integer'])], as.integer)
  for (name_var in names(cc[cc=='integer'])){
    Data[name_var]<- lapply(Data[name_var], as.integer)
  }


  # translate names according to case_template
  if(case_template=="APEX"){
    dataindex<-match(toupper(names(Data)),toupper(names(ccAPEX)))
    names(Data)<-if_else(is.na(dataindex),names(Data),names(ccAPEX)[dataindex])
  } else {
    #library(rlang)
    names(Data)<-call(case_template,names(Data))
  }

  Data <- as.data.frame(Data)

  # Remove differences in letter casings for level names
  if(case_template=="APEX"){
    Data <- levelCase_APEX(Data)
  }

  # return Data
  Data
}


  if(!is.null(Product_file_name)==TRUE)
  {
    Policy_file_name<-  read.APEX(myfile, encoding, case_template,...)
    Product_file_name_read<- read.APEX(Product_file_name, encoding, case_template,...)
    Merged_file<-merge_APEX(Product_file_name_read,Policy_file_name)
    return(Merged_file)
  }
  else if (str_sub(myfile, start=-4, end=-1)==".csv"){
    read.APEX_csv(myfile, encoding, case_template,...)
  } else if ((str_sub(myfile, start=-5 ,end=-1)==".xlsx") | (str_sub(myfile, start=-4, end=-1)==".xls")){
    read.APEX_excel(myfile, encoding, case_template, sheet, guess_max,...)
  } else {
    print("The file is not a csv or excel file.")
  }

}

# wrapper for legacy reasons
read.APEX <- read_APEX

#' @title write_APEX
#' @description
#' write dataframe to APEX format
#' @param mydata dataframe to be written
#' @param myfile saved file name/ path
#' @param fileEncoding default: "UTF-8"
#' @import readr
#' @export

write_APEX<-function(
  mydata, # date.frame
  myfile, # file name/ path
  fileEncoding = "UTF-8") {
  #library(readr)
  mydata %>%
    # format dates
    #mutate_at(vars(starts_with("Date")),~format(.,"%d/%m/%Y")) %>%
    #mutate_if(lubridate::is.Date,~format(.,"%d/%m/%Y")) %>%
    mutate_at(vars(starts_with("Date")),~as.Date(.,"%d/%m/%Y")) %>%
    # force ";" delimiter but "." decimal separator, at least on sandbox
    write_delim(myfile,delim=";", na = " ")  # default encoding: UTF-8
  # 2021-03-16 AD changed back to UTF-8 after checking Region of Residence against APEX, and comma as decimal sep
  # write.csv2(.,
  #            file = myfile,
  #            #append = FALSE,
  #            quote = FALSE,
  #            #sep = "",
  #            #eol = "\n",
  #            na = " ", #by default: "NA",
  #            #dec = ".",
  #            row.names = FALSE,
  #            #col.names = TRUE,
  #            #qmethod = c("escape", "double"),
  #            fileEncoding = fileEncoding) # encoding to be assumed for input strings: "unknown", "latin1", "UTF-8" - important for German "Umlaut"!
}

# wrapper for legacy reasons
#write.APEX <- write_APEX


#' @title split_APEX
#' @description
#' create a vector which contains all the variable names and variable class appearing in APEX dictionary
#' @param merge_APEX filename to be read
#' @export
split_APEX  <- function(merge_APEX){

  defined_product_columns  <- c("Data_Line","Client_Risk_Carrier_Name", "Commercial_Client_Name", "Client_Omega_Code",
                                "Distribution_brand_name", "Client_group", "Client_group_Omega_code",
                                "Client_grouping_other", "Client_segmentation", "Client_code", "Client_country",
                                "Deal_ID", "Quote_Number_Everest", "Treaty_Number_Omega", "Treaty_Number_Everest",
                                "Treaty_Number_Everest_no_Amm", "Business_Area", "Portfolio_Origin", "Currency",
                                "Legal_Entity", "Legal_Entity_code", "Reinsurance_Type", "Product_start_date",
                                "Product_end_date", "Type_of_policy", "Product_type", "Product_type_detail",
                                "Loan_Type", "Product_name", "Insur_Premium_Guarantee_Type",
                                "Insur_Premium_Guarantee_Term_Yrs", "Post_Level_Term_Structure",
                                "Reinsur_Premium_Guarantee_Type", "Reins_Premium_Guarantee_Term_Yrs",
                                "Gender_differentiation", "Smoker_differentiation", "Age_at_commencement_definition",
                                "Mortality_definition", "Terminal_Illness_benefit", "Med_risk_class_structure_client",
                                "Occ_risk_class_structure_client", "Min_Age_at_commencement", "Max_Age_at_commencement",
                                "Max_Benefit_Expiry_Age", "Min_Face_Amount", "Max_Face_Amount", "Min_Benefit_Term",
                                "Max_Benefit_Term", "Age_differentiation", "Return_of_Premium","Secondary_Guarantee_Indicator",
                                "Survival_period", "Med_risk_class_structure_SCOR", "Socio_eco_risk_class_structure",
                                "Rating_type_1", "Rating_type_2", "Product_dummy_text_1","Product_dummy_text_2",
                                "Product_dummy_text_3", "Product_dummy_value_1", "Product_dummy_value_2", "Product_dummy_value_3",
                                "first_snapshot", "portfolio_inception_date", "UWY", "compulsory_insurance","secondary_guarantee")


  found_columns <- intersect(names(merge_APEX),defined_product_columns)

  if (!("Product_ID" %in% names(merge_APEX))) {merge_APEX$Product_ID<-NA}

  policy_file <- merge_APEX %>% select(-one_of(found_columns))
  product_file  <- merge_APEX %>%
    select(one_of(found_columns), c("Product_ID")) %>%
    distinct(Product_ID, .keep_all = TRUE)

  return( list(Columns = found_columns, Policy = policy_file, Product = product_file))

}



`%cisin%` <- function(a,b) {
  toupper(a) %in% toupper(b)
}


`%ciseq%` <- function(a,b) {
  toupper(a) == toupper(b)
}


#' @title Blockcontrol_APEX
#' @description
#' create a vector which contains all the variable names and variable class appearing in APEX dictionary
#' @param APEXData filename to be read
#' @param case_sensitive variable for case sensitive
#' @param print_summary  whether print summary
#' @export

Blockcontrol_APEX <- function(APEXData, case_sensitive=FALSE, print_summary=TRUE) {

  # Create case (in)sensitive operators depending on parameter
  # %in% operator
  `%APEXIN%` <-  {
    if (case_sensitive) { `%in%` } else {`%cisin%`}
  }

  # equal operator
  `%APEXEQ%` <- {
    if (case_sensitive) { `==` } else {`%ciseq%`}
  }

  name_df <- names(APEXData)

  #function to rename APEX in dictionary format
  check_name_APEX <-function(Data){
    index <-match(toupper(names(Data)),toupper(names(colclasses_APEX())))

    #check variable name exist?
    check <- sum(is.na(index))==0
    # if variable name not in APEX list, warning
    if(check==FALSE){
      var_warning<- names(Data)[which(is.na(index))]
      warning("The following variable names don't exist in APEX dictionary:",var_warning)
    }
    names(Data) <- names(colclasses_APEX())[index]
    names(Data)[which(is.na(index))] <- name_df[which(is.na(index))]
    return(Data)}



  # Ref_Other_check_APEX is a function that allow you to check if the levels from the variable von result APEX Data
  # is accepted by the Reference Code from APEX dictionnary.
  ## Use read.apex function to use this function
  # result_APEX : result APEX data
  # ref_APEX : APEX data dictionnary, sheet = Ref Other
  # (0) : code match
  # (1) : wrong code type
  # block00_match_code : any error variable on your Dataframe
  # Ref_Other_check_APEX <- function(result_APEX, case_sensitive=FALSE){
  #   load("/data/Data_ref_other.RData")
  #   # create a Line_ID
  #   result_APEX <- result_APEX %>% mutate(Line_ID = paste(row_number()))
  #   # take all identic columns name bettween apex dictionnary and resultat apex
  #   result_ref_Data <- result_APEX[,colnames(result_APEX) %cisin% unique(Data_ref_other$Attribute)]
  #   # # take columns name
  #   col_pivot <- colnames(result_ref_Data)
  #   result_ref_Data$Line_ID = result_APEX$Line_ID
  #
  #   # piReshape a data frame from wide to long format
  #   APEX_data_longer <- result_ref_Data %>% pivot_longer(cols = col_pivot, names_to = "Attribute", values_to = "Code" )
  #   # Delete all row contain "NA"
  #   APEX_data_longer <- APEX_data_longer %>% filter(!is.na(Code))
  # transfort all columns to upper
#   if(case_sensitive == FALSE){
#     APEX_data_longer$Code <- toupper(APEX_data_longer$Code)
#     APEX_data_longer$Attribute <- toupper(APEX_data_longer$Attribute)
#     Data_ref_other$Code <- toupper(Data_ref_other$Code)
#     Data_ref_other$Attribute <- toupper(Data_ref_other$Attribute)
#   }
#
#   # create a new columns contain "code_match"
#   Data_ref_other$Check <- 0
#   # join_left and select all columns we need to keep
#   APEX_data_longer <- APEX_data_longer %>% left_join(Data_ref_other, by= c("Attribute", "Code")) %>% select(c("Line_ID", "Attribute", "Code", "Check"))
#   # select all row from Code = "1"
#   APEX_data_longer <- APEX_data_longer %>% filter(is.na(Check)) %>% mutate(Check = 1)
#
#   # Reshape a data frame from long to wide format
#   APEX_data_wider <- APEX_data_longer %>% pivot_wider(names_from = Attribute,
#                                                       values_from = Code, names_repair = "check_unique")
#
#   # delete Check variable
#   APEX_data_wider <- APEX_data_wider %>% select(-Check)
#   # add on all variable name "block00_match_" for the columns that tell us if the variable name
#   # good or not.
#   APEX_data_wider <- APEX_data_wider %>% rename_at(vars(-Line_ID), funs(paste0("block00_match_", .)))
#
#   APEX_data_wider <- left_join(result_APEX, APEX_data_wider, by= "Line_ID")
#   # delete the line ID
#   APEX_data_wider <- APEX_data_wider %>% select(-Line_ID)
#   return(APEX_data_wider)
# }

  #
  # # create summary for APEX data checks
  summary_check_APEX<-function(APEXData){
    # if no checks run, do run checks
    if(!("block" %in% substr(names(APEXData),1,5))) {APEXData <- check_APEX(APEXData)}

    #return summary of checks - currently only those starting with "block"
    return(APEXData %>% select(starts_with("block")) %>% pivot_longer(starts_with("block")) %>% group_by(name,value) %>% tally())
  }



  # Add columns with blocking controls
  APEXData <- APEXData %>%
    check_name_APEX()%>%
    #38 Missing Values - certain variables must not be missing

    mutate(block38_01_sts_begin_cc = if (all(c("Status_Begin_Current_Condition","Type_of_Event",
                                               "Date_of_Commencement") %APEXIN% names(APEXData))) {
      ifelse((Status_Begin_Current_Condition %APEXEQ% "Active" |
                Type_of_Event %APEXIN% c("death", "incidence", "withdrawal", "Incidence_Death")) &
               Date_of_Commencement %APEXIN% c("", " ", NA),
             "doc_na",
             "")
    } else {
      block38_01_sts_begin_cc = ""
    }) %>%

    #Type_of_Event (claim terminaison = 0 & NA = 8264).
    mutate(block38_02_sts_begin_cc = if (all(c("Status_Begin_Current_Condition","Type_of_Event",
                                               "Date_of_claim_commencement") %APEXIN% names(APEXData))) {
      ifelse((Status_Begin_Current_Condition %APEXEQ% "Claimant" |
                Type_of_Event %APEXEQ% "claim termination") &
               Date_of_claim_commencement %APEXIN% c("", " ", NA),
             "doc_na",
             "")
    } else {
      block38_02_sts_begin_cc = ""
    }) %>%

    # new Coherence of Risk Types
    mutate(blockmain_01_risk_type = if (all(c("Acceleration_Risk_Type","Main_Risk_Type") %APEXIN% names(APEXData))){
      ifelse((!(Acceleration_Risk_Type %APEXIN% c("", " ", NA)) & Main_Risk_Type != "Life"),
             "acc_main_risk",
             "")

    } else {
      block_main_risk_type_01 = ""
    }) %>%

    mutate(blockmain_02_sub_risk_type = if (all(c("Main_Risk_Type", "Sub_Risk_Type") %APEXIN% names(APEXData))) {
      ifelse(!(Sub_Risk_Type %APEXIN% c("", " ", NA)) &
               !(Main_Risk_Type %APEXIN% c("DI", "LTC")),
             "main_sub_risk",
             "")
    } else {
      block_main_risk_type_02 = ""
    }) %>%


    # #6 Event Existence - For each status change, all compulsory event variables must be completed
    mutate(block06_event_ex = if (all(c("Status_Begin_Current_Condition","Status_End_Current_Condition",
                                        "Type_of_Event","Date_of_Event_Incurred") %APEXIN% names(APEXData))) {
      ifelse(as.character(Status_Begin_Current_Condition) != as.character(Status_End_Current_Condition) &
               !(Status_End_Current_Condition %APEXIN% c("Expired", "Censored", "")) &
               (Type_of_Event %APEXIN% c("", " ", NA) | Date_of_Event_Incurred %APEXIN% c("", " ", NA)),
             "event_info_na",
             "")
    } else {
      block06_event_ex = ""
    }) %>%

    # #4 Birth <= Commencement - dob of insured must be prior the date of commencement of the policy
    mutate(block04_dob = if (all(c("Date_of_Birth", "Date_of_Commencement") %APEXIN% names(APEXData))) {
      ifelse(!(Date_of_Birth %APEXIN% c("", " ", NA)) &
               !(Date_of_Commencement %APEXIN% c("", " ", NA)) &
               Date_of_Birth > Date_of_Commencement,
             "dob>doc",
             "")
    } else {
      block04_dob = ""
    }) %>%

    #8 Order of status dates - date of Begin Current Condition must be prior the date of End Current Condition
    mutate(block08_status_date = if (all(c("Date_of_Begin_Current_Condition",
                                           "Date_of_End_Current_Condition") %APEXIN% names(APEXData))){
      ifelse(!(Date_of_Begin_Current_Condition %APEXIN% c(""," ",NA)) &
               !(Date_of_End_Current_Condition %APEXIN% c(""," ",NA)) &
               Date_of_Begin_Current_Condition > Date_of_End_Current_Condition,
             "DateOfBegin>DateOfEnd",
             "")
    } else {
      block08_status_date = ""
    }) %>%

    # #7 Commencement <= Event
    # Date of Commencement & last medical selection of Policy must be prior the Date of Event Incurred
    mutate(block07__01_doc_doeinc = if (all(c("Date_of_Commencement","Date_of_Event_Incurred") %APEXIN% names(APEXData))){
      ifelse(!(Date_of_Commencement %APEXIN% c(""," ",NA)) &
               !(Date_of_Event_Incurred %APEXIN% c(""," ",NA)) &
               Date_of_Commencement > Date_of_Event_Incurred,
             "doc>doe",
             "")
    } else {
      block07__01_doc_doeinc = ""
    }) %>%

    mutate(block07_02_doeinc_dolms = if (all(c("Date_of_Event_Incurred","Date_of_last_medical_selection") %APEXIN% names(APEXData))){
      ifelse(!(Date_of_last_medical_selection %APEXIN% c(""," ",NA)) &
               !(Date_of_Event_Incurred %APEXIN% c(""," ",NA)) &
               Date_of_last_medical_selection > Date_of_Event_Incurred,
             "DateLastMedSel>doe",
             "")
    } else {
      block07_02_doeinc_dolms = ""
    }) %>%

    # #13 Status coherent with event type
    # type of event must be coherent with the status begin/end current condition
    mutate(block13_event_status = if (all(c("Status_End_Current_Condition","Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXEQ% "death" &
                Status_End_Current_Condition != "Dead")|
               (Type_of_Event %APEXEQ% "incidence" &
                  Status_End_Current_Condition != "Claimant")|
               (Type_of_Event %APEXEQ% "withdrawal" &
                  Status_End_Current_Condition != "Withdrawn")|
               (Type_of_Event %APEXEQ% "Incidence_Death" &
                  Status_End_Current_Condition != "Claimant_Dead")|
               (Type_of_Event %APEXEQ% "claim termination" &
                  !(Status_End_Current_Condition %APEXIN% c("Active","Dead")))|
               (Type_of_Event %APEXIN% c(""," ", NA) &
                  !(Status_End_Current_Condition %APEXIN% c("Active","expired","censored",""," ", NA))),
             "status!~EventType",
             "")
    } else {
      block13_event_status = ""
    }) %>%


    # #33 Date of Event = Date of End Current Condition
    # In case of Event, Date of Event Incurred must be equal to Date of End Current Condition
    mutate(block33_event_st_date = if (all(c("Date_of_Event_Incurred", "Date_of_End_Current_Condition",
                                             "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse(!(Type_of_Event %APEXIN% c(""," ",NA)) &
               !(Date_of_Event_Incurred %APEXIN% c(""," ",NA)) &
               !(Date_of_End_Current_Condition %APEXIN% c(""," ",NA)) &
               Date_of_Event_Incurred != Date_of_End_Current_Condition,
             "doe!=DateEndCurrCond",
             "")
    } else {
      block33_event_st_date = ""
    }) %>%

    # #11 Commencement <= Current Condition
    # Date of commencement of policy must be prior the date of begin current condition
    mutate(block11_doc = if (all(c("Date_of_Commencement","Date_of_Begin_Current_Condition") %APEXIN% names(APEXData))){
      ifelse(!(Date_of_Commencement %APEXIN% c(""," ",NA)) &
               !(Date_of_Begin_Current_Condition %APEXIN% c(""," ",NA)) &
               Date_of_Commencement > Date_of_Begin_Current_Condition,
             "doc>DateBeginCond",
             "")
    } else {
      block11_doc = ""
    }) %>%

    # #52 Acceleration Risk Amount and Risk Amount
    # When there is a Claimant_Dead, acceleration risk amount must be equal to risk amount
    mutate(block52_01_status_cc_acc_risk_ins = if (all(c("Status_End_Current_Condition","Risk_Amount_Insurer",
                                                         "Acceleration_Risk_Amount_Insurer") %APEXIN% names(APEXData))){

      ifelse(!(Risk_Amount_Insurer %APEXIN% c(""," ",NA)) &
               !(Acceleration_Risk_Amount_Insurer %APEXIN% c(""," ",NA)) &
               (Status_End_Current_Condition %APEXEQ% "Claimant_Dead") &
               Risk_Amount_Insurer != Acceleration_Risk_Amount_Insurer,
             paste0(Status_End_Current_Condition, Acceleration_Risk_Amount_Insurer),
             "")
    } else {
      block52_01_status_cc_acc_risk_ins = ""
    }) %>%

    mutate(block52_02_status_cc_acc_risk_reins = if (all(c("Status_End_Current_Condition","Risk_Amount_Reinsurer",
                                                           "Acceleration_Risk_Amount_Reinsurer") %APEXIN% names(APEXData))){
      ifelse(!(Risk_Amount_Reinsurer %APEXIN% c(""," ",NA)) &
               !(Acceleration_Risk_Amount_Reinsurer %APEXIN% c(""," ",NA)) &
               (Status_End_Current_Condition %APEXEQ% "Claimant_Dead") &
               Risk_Amount_Reinsurer != Acceleration_Risk_Amount_Reinsurer,
             paste0(Status_End_Current_Condition, Acceleration_Risk_Amount_Reinsurer),
             "")

    } else {
      block52_02_status_cc_acc_risk_ins = ""
    }) %>%

    # #57 No event info when no Event Type
    mutate(block57_00_cause_event1 = if (all(c("Cause_of_Event_1", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Cause_of_Event_1 %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Cause_1),
             "")
    } else {
      block57_00_cause_event1 = ""
    },

    block57_01_cause_event_info1_det = if (all(c("Cause_of_Event_1_det", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Cause_of_Event_1_det %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Cause_1_det),
             "")

    } else {
      block57_01_cause_event_info1_det = ""
    },

    block57_02_cause_event1_other = if (all(c("Cause_of_Event_1_other", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Cause_of_Event_1_other %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Cause_1_other),
             "")
    } else {
      block57_02_cause_event1_other = ""
    },

    block57_03_cause_event2 = if (all(c("Cause_of_Event_2", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Cause_of_Event_2 %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Cause_of_Event_2),
             "")
    } else {
      block57_03_cause_event2 = ""
    },
    # block57_04_type_cause_event
    block57_04_type_cause_event2_det = if (all(c("Cause_of_Event_2_det", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Cause_of_Event_2_det %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Cause_of_Event_2_det),
             "")

    } else {
      block57_04_cause_event2_det = ""
    },

    block57_05_cause_event2_other = if (all(c("Cause_of_Event_2_other", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Cause_of_Event_2_other %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Cause_of_Event_2_other),
             "")
    } else {
      block57_05_cause_event2_other = ""
    },

    block57_06_date_event_inc = if (all(c("Date_of_Event_Incurred", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Date_of_Event_Incurred %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Date_of_Event_Incurred),
             "")
    } else {
      block57_06_date_event_inc = ""
    },

    block57_07_date_event_not = if (all(c("Date_of_Event_Notified", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Date_of_Event_Notified %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Date_of_Event_Notified),
             "")
    } else {
      block57_07_date_event_not = ""
    },

    block57_08_date_event_paid = if (all(c("Date_of_Event_Paid", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Date_of_Event_Paid %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Cause_of_Event_Paid),
             "")
    } else {
      block57_08_date_event_paid = ""
    },

    block57_09_date_event_sett = if (all(c("Date_of_Event_Settled", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Date_of_Event_Settled %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Date_of_Event_Settled),
             "")
    } else {
      block57_09_date_event_sett = ""
    },

    block57_10_date_frst_evt_inc = if (all(c("Date_of_First_Event_Incurred", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Date_of_First_Event_Incurred %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Cause_of_First_Event_Incurred),
             "")
    } else {
      block57_10_date_frst_evt_inc = ""
    },

    block57_11_event_adj = if (all(c("Event_adjustment", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_adjustment %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_adjustment),
             "")
    } else {
      block57_11_event_adj = ""
    },

    block57_12_event_amnt_all = if (all(c("Event_amount_allowed", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_amount_allowed %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_amount_allowed),
             "")
    } else {
      block57_12_event_amnt_all = ""
    },

    block57_13_event_amnt_Ins = if (all(c("Event_Amount_Insurer", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_Amount_Insurer %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_Amount_Insurer),
             "")
    } else {
      block57_13_event_amnt_Ins = ""
    },

    block57_14_event_amnt_inv = if (all(c("Event_amount_invoiced", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_amount_invoiced %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_amount_invoiced),
             "")
    } else {
      block57_14_event_amnt_inv = ""
    },

    block57_15_event_amnt_other_covers = if (all(c("Event_amount_other_covers", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_amount_other_covers %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_amount_other_covers),
             "")
    } else {
      block57_15_event_amnt_other_covers = ""
    },

    block57_16_event_amnt_pocket = if (all(c("Event_amount_out_of_pocket", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_amount_out_of_pocket %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_amount_out_of_pocket),
             "")
    } else {
      block57_16_event_amnt_pocket = ""
    },

    block57_17_event_amnt_reins = if (all(c("Event_Amount_Reinsurer", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_Amount_Reinsurer %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_Amount_Reinsurer),
             "")
    } else {
      block57_17_event_amnt_reins = ""
    },

    block57_18_event_amnt_social_secur = if (all(c("Event_amount_social_security", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_amount_social_security %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_Amount_social_security),
             "")
    } else {
      block57_18_event_amnt_social_secur = ""
    },

    block57_19_event_amnt_up_band = if (all(c("Event_Amount_Upper_Band", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_Amount_Upper_Band %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_Amount_Upper_Band),
             "")
    } else {
      block57_19_event_amnt_up_band = ""
    },

    block57_20_event_copay_ratio = if (all(c("Event_copay_ratio", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_copay_ratio %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_copay_ratio),
             "")
    } else {
      block57_20_event_copay_ratio =""
    },

    block57_21_event_deduct = if (all(c("Event_deductible", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_deductible %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_deductible),
             "")
    } else {
      block57_21_event_deduct = ""
    },

    block57_22_event_id = if (all(c("Event_ID", "Type_of_Event") %APEXIN% names(APEXData))){
      ifelse((Type_of_Event %APEXIN% c(""," ",NA)) & (!(Event_ID %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Event_ID),
             "")
    } else{
      block57_22_event_id = ""
    } ) %>%


    # #35 Variable Dependency - certain vars require additional info from another variable
    mutate(block35_01_dep_type_data_event = if (all(c("Type_of_Event",
                                                      "Date_of_Event_Incurred") %APEXIN% names(APEXData))){
      ifelse((!(Type_of_Event %APEXIN% c(""," ",NA)) & Date_of_Event_Incurred %APEXIN% c(""," ",NA)) |
               (Type_of_Event %APEXIN% c(""," ",NA) & (!Date_of_Event_Incurred %APEXIN% c(""," ",NA))),
             paste0(Type_of_Event, Date_of_Event_Incurred),
             "")

    } else {
      block35_01_dep_type_data_event = ""
    }) %>%


    mutate(block35_02_dep_smoker_status_detailed = ifelse("Smoker_status_detailed" %APEXIN% names(APEXData) &
                                                            !("Smoker_status" %APEXIN% names(APEXData)),
                                                          "variable not found",
                                                          ""),
           block35_02_dep_smoker_status_detailed  = if (all(c("Smoker_status_detailed",
                                                              "Smoker_status") %APEXIN% names(APEXData))){
             ifelse((!(Smoker_status_detailed %APEXIN% c(""," ",NA)) &
                       Smoker_status %APEXIN% c(""," ",NA)),
                    paste0(Smoker_status, Smoker_status_detailed),
                    "")

           } else {
             block35_02_dep_smoker_status_detailed  = ""
           } ) %>%

    mutate(block35_03_benefit_term_yrs_type = ifelse("Benefit_Term_Years" %APEXIN% names(APEXData) &
                                                       !("Benefit_Term_Type" %APEXIN% names(APEXData)),
                                                     "variable not found",
                                                     ""),
           block35_03_benefit_term_yrs_type = if (all(c("Benefit_Term_Years",
                                                        "Benefit_Term_Type") %APEXIN% names(APEXData))){
             ifelse((!(Benefit_Term_Years %APEXIN% c(""," ",NA)) &
                       Benefit_Term_Type %APEXIN% c(""," ",NA)),
                    paste0(Benefit_Term_Type, Benefit_Term_Years),
                    "")
           } else {
             block35_03_benefit_term_yrs_type = ""
           }) %>%

    mutate(block35_04_dep_benefitmaxagee_termtype = ifelse("Benefit_Max_Age" %APEXIN% names(APEXData) &
                                                             !("Benefit_Term_Type" %APEXIN% names(APEXData)),
                                                           "variable not found",
                                                           ""),
           block35_04_dep_benefitmaxagee_termtype = if (all(c("Benefit_Max_Age",
                                                              "Benefit_Term_Type") %APEXIN% names(APEXData))){
             ifelse((!(Benefit_Max_Age %APEXIN% c(""," ",NA)) &
                       Benefit_Term_Type %APEXIN% c(""," ",NA)),
                    paste0(Benefit_Term_Type, Benefit_Max_Age),
                    "")
           } else {
             block35_04_dep_benefitmaxagee_termtype = ""
           } ) %>%


    mutate(block35_05_dep_mult_rated_status = ifelse("Multiplicative_Rated_Status" %APEXIN% names(APEXData) &
                                                       !("Rated_Status" %APEXIN% names(APEXData)),
                                                     "variable not found",
                                                     ""),
           block35_05_dep_mult_rated_status = if (all(c("Multiplicative_Rated_Status",
                                                        "Rated_Status") %APEXIN% names(APEXData))){
             ifelse((!(Multiplicative_Rated_Status %APEXIN% c(""," ",NA)) &
                       Rated_Status %APEXIN% c(""," ",NA)),
                    paste0(Rated_Status, Multiplicative_Rated_Status),
                    "")
           } else {
             block35_05_dep_mult_rated_status = ""
           } ) %>%


    mutate(block35_06_dep_add_rated_status = ifelse("Additive_Rated_Status" %APEXIN% names(APEXData) &
                                                      !("Rated_Status" %APEXIN% names(APEXData)),
                                                    "variable not found",
                                                    ""),
           block35_06_add_rated_status = if (all(c("Additive_Rated_Status",
                                                   "Rated_Status") %APEXIN% names(APEXData))){
             ifelse((!(Additive_Rated_Status %APEXIN% c(""," ",NA)) &
                       Rated_Status %APEXIN% c(""," ",NA)),
                    paste0(Rated_Status, Additive_Rated_Status),
                    "")
           } else {
             block35_06_add_rated_status = ""
           } ) %>%


    mutate(block35_07_dep_wait_per1_typ = ifelse("Waiting_Period_1_Type" %APEXIN% names(APEXData) &
                                                   !("Waiting_Period_1" %APEXIN% names(APEXData)),
                                                 "variable not found",
                                                 ""),
           block35_07_dep_wait_per1_typ = if (all(c("Waiting_Period_1_Type",
                                                    "Waiting_Period_1") %APEXIN% names(APEXData))){
             ifelse((!(Waiting_Period_1_Type %APEXIN% c(""," ",NA)) &
                       Waiting_Period_1 %APEXIN% c(""," ",NA)),
                    paste0(Waiting_Period_1, Waiting_Period_1_Type ),
                    "")
           } else {
             block35_07_dep_wait_per1_typ = ""
           } ) %>%

    mutate(block35_08_dep_wait_per2_typ = ifelse("Waiting_Period_2_Type" %APEXIN% names(APEXData) &
                                                   !("Waiting_Period_2" %APEXIN% names(APEXData)),
                                                 "variable not found",
                                                 ""),
           block35_08_dep_wait_per2_typ = if (all(c("Waiting_Period_2_Type",
                                                    "Waiting_Period_2") %APEXIN% names(APEXData))){
             ifelse((!(Waiting_Period_2_Type %APEXIN% c(""," ",NA)) &
                       Waiting_Period_2 %APEXIN% c(""," ",NA)),
                    paste0(Waiting_Period_2, Waiting_Period_2_Type ), "")
           } else {
             block35_08_dep_wait_per2_typ = ""
           } ) %>%

    mutate(block35_09_dep_wait_per3_typ = ifelse("Waiting_Period_3_Type" %APEXIN% names(APEXData) &
                                                   !("Waiting_Period_3" %APEXIN% names(APEXData)),
                                                 "variable not found",
                                                 ""),
           block35_09_dep_wait_per2_typ = if (all(c("Waiting_Period_3_Type",
                                                    "Waiting_Period_3") %APEXIN% names(APEXData))){
             ifelse((!(Waiting_Period_3_Type %APEXIN% c(""," ",NA)) &
                       Waiting_Period_3 %APEXIN% c(""," ",NA)),
                    paste0(Waiting_Period_3, Waiting_Period_3_Type ), "")
           } else {
             block35_09_dep_wait_per2_typ = ""
           } ) %>%


    mutate(block35_10_dep_temp_mult_ex_rating1 = ifelse("Temp_Mult_Extra_Rating_Term_1" %APEXIN% names(APEXData) &
                                                          !("Temp_Mult_Extra_Rating_1" %APEXIN% names(APEXData)),
                                                        "variable not found",
                                                        ""),
           block35_10_dep_temp_mult_ex_rating1 = if (all(c("Temp_Mult_Extra_Rating_Term_1",
                                                           "Temp_Mult_Extra_Rating_1") %APEXIN% names(APEXData))){
             ifelse((!(Temp_Mult_Extra_Rating_Term_1 %APEXIN% c(""," ",NA)) &
                       Temp_Mult_Extra_Rating_1 %APEXIN% c(""," ",NA)) |
                      (Temp_Mult_Extra_Rating_Term_1 %APEXIN% c(""," ",NA) &
                         !(Temp_Mult_Extra_Rating_1 %APEXIN% c(""," ",NA))),
                    paste0(Temp_Mult_Extra_Rating_1, Temp_Mult_Extra_Rating_Term_1),
                    "")
           } else {
             block35_10_dep_temp_mult_ex_rating1 = ""
           }) %>%

    mutate(block35_11_dep_temp_mult_ex_rating2 = ifelse("Temp_Mult_Extra_Rating_Term_2" %APEXIN% names(APEXData) &
                                                          !("Temp_Mult_Extra_Rating_2" %APEXIN% names(APEXData)),
                                                        "variable not found",
                                                        ""),
           block35_11_dep_temp_mult_ex_rating2 = if (all(c("Temp_Mult_Extra_Rating_Term_2",
                                                           "Temp_Mult_Extra_Rating_2") %APEXIN% names(APEXData))){
             ifelse((!(Temp_Mult_Extra_Rating_Term_2 %APEXIN% c(""," ",NA)) &
                       Temp_Mult_Extra_Rating_2 %APEXIN% c(""," ",NA)) |
                      (Temp_Mult_Extra_Rating_Term_2 %APEXIN% c(""," ",NA) &
                         !(Temp_Mult_Extra_Rating_2 %APEXIN% c(""," ",NA))),
                    paste0(Temp_Mult_Extra_Rating_2, Temp_Mult_Extra_Rating_Term_2),
                    "")
           } else {
             block35_11_dep_temp_mult_ex_rating2 = ""
           }) %>%

    mutate(block35_12_dep_temp_mult_ex_rating3 = ifelse("Temp_Mult_Extra_Rating_Term_3" %APEXIN% names(APEXData) &
                                                          !("Temp_Mult_Extra_Rating_3" %APEXIN% names(APEXData)),
                                                        "variable not found",
                                                        ""),
           block35_12_dep_temp_mult_ex_rating3 = if (all(c("Temp_Mult_Extra_Rating_Term_3",
                                                           "Temp_Mult_Extra_Rating_3") %APEXIN% names(APEXData))){
             ifelse((!(Temp_Mult_Extra_Rating_Term_3 %APEXIN% c(""," ",NA)) &
                       Temp_Mult_Extra_Rating_3 %APEXIN% c(""," ",NA)) |
                      (Temp_Mult_Extra_Rating_Term_3 %APEXIN% c(""," ",NA) &
                         !(Temp_Mult_Extra_Rating_3 %APEXIN% c(""," ",NA))),
                    paste0(Temp_Mult_Extra_Rating_3, Temp_Mult_Extra_Rating_Term_3),
                    "")
           } else {
             block35_12_dep_temp_mult_ex_rating3 = ""
           }) %>%



    mutate(block35_13_dep_temp_add_ex_rating1 = ifelse("Temp_Add_Extra_Rating_Term_1" %APEXIN% names(APEXData) &
                                                         !("Temp_Add_Extra_Rating_1" %APEXIN% names(APEXData)),
                                                       "variable not found",
                                                       ""),
           block35_13_dep_temp_add_ex_rating1= if (all(c("Temp_Add_Extra_Rating_Term_1",
                                                         "Temp_Add_Extra_Rating_1") %APEXIN% names(APEXData))){
             ifelse((!(Temp_Add_Extra_Rating_Term_1 %APEXIN% c(""," ",NA)) &
                       Temp_Add_Extra_Rating_1 %APEXIN% c(""," ",NA)) |
                      (Temp_Add_Extra_Rating_Term_1 %APEXIN% c(""," ",NA) &
                         !(Temp_Add_Extra_Rating_1 %APEXIN% c(""," ",NA))),
                    paste0(Temp_Add_Extra_Rating_1, Temp_Add_Extra_Rating_Term_1),
                    "")
           } else {
             block35_13_dep_temp_add_ex_rating1 = ""
           } ) %>%

    mutate(block35_14_dep_temp_add_ex_rating2 = ifelse("Temp_Add_Extra_Rating_Term_2" %APEXIN% names(APEXData) &
                                                         !("Temp_Add_Extra_Rating_2" %APEXIN% names(APEXData)),
                                                       "variable not found",
                                                       ""),
           block35_14_dep_temp_add_ex_rating2 = if (all(c("Temp_Add_Extra_Rating_Term_2",
                                                          "Temp_Add_Extra_Rating_2") %APEXIN% names(APEXData))){
             ifelse((!(Temp_Add_Extra_Rating_Term_2 %APEXIN% c(""," ",NA)) &
                       Temp_Add_Extra_Rating_2 %APEXIN% c(""," ",NA)) |
                      (Temp_Add_Extra_Rating_Term_2 %APEXIN% c(""," ",NA) &
                         !(Temp_Add_Extra_Rating_2 %APEXIN% c(""," ",NA))),
                    paste0(Temp_Add_Extra_Rating_2, Temp_Add_Extra_Rating_Term_2),
                    "")
           } else {
             block35_14_dep_temp_add_ex_rating2 = ""
           }) %>%


    mutate(block35_15_dep_child_ben_type = ifelse("Child_Benefit_Type" %APEXIN% names(APEXData) &
                                                    !("Child_Benefit" %APEXIN% names(APEXData)),
                                                  "variable not found",
                                                  ""),
           block35_15_dep_child_ben_type = if (all(c("Child_Benefit_Type",
                                                     "Child_Benefit") %APEXIN% names(APEXData))){
             ifelse((!(Child_Benefit_Type %APEXIN% c(""," ",NA)) &
                       Child_Benefit %APEXIN% c(""," ",NA)),
                    paste0(Child_Benefit, Child_Benefit_Type),
                    "")
           } else {
             block35_15_dep_child_ben_type = ""
           } ) %>%


    mutate(block35_16_dep_acc_risk_type = ifelse("Acceleration_Risk_Type" %APEXIN% names(APEXData) &
                                                   !("Acceleration_Benefit" %APEXIN% names(APEXData)),
                                                 "variable not found",
                                                 ""),
           block35_16_dep_acc_risk_type = if (all(c("Acceleration_Risk_Type",
                                                    "Acceleration_Benefit") %APEXIN% names(APEXData))){
             ifelse((!(Acceleration_Risk_Type %APEXIN% c(""," ",NA)) &
                       Acceleration_Benefit %APEXIN% c(""," ",NA)),
                    paste0(Acceleration_Benefit, Acceleration_Risk_Type),
                    "")
           } else {
             block35_16_dep_acc_risk_type = ""
           } ) %>%


    mutate(block35_17_dep_buy_opt_type = ifelse("Buyback_Option_Type" %APEXIN% names(APEXData) &
                                                  !("Buyback_Option" %APEXIN% names(APEXData)),
                                                "variable not found",
                                                ""),
           block35_17_dep_buy_opt_type = if (all(c("Buyback_Option_Type",
                                                   "Buyback_Option") %APEXIN% names(APEXData))){
             ifelse((!(Buyback_Option_Type %APEXIN% c(""," ",NA)) &
                       Buyback_Option %APEXIN% c(""," ",NA)),
                    paste0(Buyback_Option, Buyback_Option_Type),
                    "")
           } else {
             block35_17_dep_buy_opt_type = ""
           }) %>%


    mutate(block35_18_dep_ben_chang_freq_rate_ann = ifelse("Benefit_Change_Rate_Annual" %APEXIN% names(APEXData) &
                                                             !("Benefit_Change_Frequency" %APEXIN% names(APEXData)),
                                                           "variable not found",
                                                           ""),
           block35_18_dep_ben_chang_freq_rate_ann = if (all(c("Benefit_Change_Rate_Annual",
                                                              "Benefit_Change_Frequency") %APEXIN% names(APEXData))){
             ifelse((!(Benefit_Change_Rate_Annual %APEXIN% c(""," ",NA)) &
                       Benefit_Change_Frequency %APEXIN% c(""," ",NA)),
                    "variable not found",
                    "")
           } else {
             block35_18_dep_ben_chang_freq_rate_ann = ""
           } ) %>%


    mutate(block35_19_dep_age_at_com = ifelse("Age_at_Commencement" %APEXIN% names(APEXData) &
                                                !("Age_at_Commencement_definition" %APEXIN% names(APEXData)),
                                              "variable not found",
                                              ""),
           block35_19_dep_age_at_com  = if (all(c("Age_at_Commencement",
                                                  "Age_at_Commencement_definition") %APEXIN% names(APEXData))){
             ifelse((!(Age_at_Commencement %APEXIN% c(""," ",NA)) &
                       Age_at_Commencement_definition %APEXIN% c(""," ",NA)),
                    paste0(Age_at_Commencement_definition, Age_at_Commencement),
                    "")
           } else {
             block35_19_dep_age_at_com  = ""
           }) %>%

    mutate(block35_20_dep_claim_paym_change = if (all(c("Claim_Payment_Change_Rate_Annual",
                                                        "Claim_Payment_Change_Rate_Type") %APEXIN% names(APEXData))){
      ifelse(!(Claim_Payment_Change_Rate_Type %APEXIN% c("simple","compound")) &
               !(Claim_Payment_Change_Rate_Annual %APEXIN% c(""," ",NA)),
             paste0(Claim_Payment_Change_Rate_Type,Claim_Payment_Change_Rate_Annual ),
             "")
    } else{
      block35_20_dep_claim_paym_change = ""
    }) %>%

    mutate(block35_21_dep_age_at_cc = ifelse("Age_at_Claim_Commencement" %APEXIN% names(APEXData) &
                                               !("Age_at_Claim_Commencement_def" %APEXIN% names(APEXData)),
                                             "variable not found",
                                             ""),
           block35_21_dep_age_at_cc = if (all(c("Age_at_Claim_Commencement",
                                                "Age_at_Claim_Commencement_def") %APEXIN% names(APEXData))){

             ifelse((!(Age_at_Claim_Commencement %APEXIN% c(""," ",NA)) &
                       Age_at_Claim_Commencement_def %APEXIN% c(""," ",NA)),
                    paste0(Age_at_Claim_Commencement_def, Age_at_Claim_Commencement),
                    "")
           } else {
             block35_21_dep_age_at_cc = ""
           }) #%>%
            #Ref_Other_check_APEX()

  APEXData <- APEXData %>% unite("block07_sum", starts_with("block07"), sep = "", na.rm= TRUE, remove = FALSE )
  #APEXData <- APEXData %>% unite("block13_sum", starts_with("block13"), sep = "", na.rm= TRUE, remove = FALSE )
  APEXData <- APEXData %>% unite("block38_sum", starts_with("block38"), sep = "", na.rm= TRUE, remove = FALSE )
  APEXData <- APEXData %>% unite("blockmain_sum", starts_with("blockmain"), sep = "", na.rm = TRUE,remove = FALSE)
  APEXData <- APEXData %>% unite("block57_sum", starts_with("block57"), sep = "", na.rm = TRUE, remove = FALSE )
  APEXData <- APEXData %>% unite("block35_sum", starts_with("block35"), sep = "", na.rm = TRUE, remove = FALSE )

  name_new <- names(APEXData)
  index<- match(toupper(names(APEXData)),toupper(name_df))
  names(APEXData) <- name_df[index]
  names(APEXData)[which(is.na(index))] <- name_new[which(is.na(index))]

  if(print_summary) {print(summary_check_APEX(APEXData), n = Inf)}

  return(APEXData)
  }
