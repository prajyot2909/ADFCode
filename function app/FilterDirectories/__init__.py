import logging
import re
import json

import azure.functions as func


def main(req: func.HttpRequest) -> func.HttpResponse:
    logging.info('Python HTTP trigger function processed a request.')
    
    name = req.params.get('name')
    if not name:
        try:
                req_body = req.get_json()
        except ValueError:
            pass
        else:
            childItems = req_body.get('childItems')
            folderarray= []
            folderarrayYear =[]
            for value in childItems:                                                                    
                logging.info(value['name'])
                if(re.match('(\d{4})[/.-](\d{2})[/.-](\d{2})$',value['name']) or re.match('(\d{4})[/.-](\d{2})$',value['name']) ):
                    logging.info(value['name'])
                    folderarray.append(value['name'])
                if(re.match('(\d{4})$',value['name'])):
                    folderarrayYear.append(value['name'])

    if name:               

        resultJson = {
           'results' : folderarray,
           'resultsYear' : folderarrayYear
        }

        jsonload = json.dumps(resultJson)
        logging.info(jsonload)
        return func.HttpResponse(jsonload)
    else:
        return func.HttpResponse(
             "Please pass a childItems on the request body",
             status_code=400
        )
