# StructureTrafficLights
Jira Structure plugin basic script "traffic lights" to show how long issue has been without any actions (editings)


<br />
Jira Structure plugin offers internal "basic" language to do calculations and coding without using Groovy via Script Runner plugin

This example (to bet set as Formula column in Structure) checks when issue has been last time "touched" and gives following traffic light indications:

<br />

1) RED BOX if nothing done over 10 days 

2) Blue "CHECK" text if nothing done 5-10 days

3) Green "OK" text if something done for the issue in last 5 days

<br />


The basic script to do all this:

	WITH res=DAYS_BETWEEN(now(),last_edited):
	if (res<-10;"(x)";res>-10 AND res<-5; "{color:blue}CHECK{color}"; res>-5 ;"{color:green}OK{color}")


NOTES:

1) Last_edited must be set in editor as "used in column" type in order calculations to work

2) (x) is Jira Wiki language "X in red box" symbol (see https://jira.atlassian.com/secure/WikiRendererHelpAction.jspa?section=all )
