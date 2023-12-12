#import <Foundation/Foundation.h>
#import "SQObject.h"

/**
* Square Connect API
* Client library for accessing the Square Connect APIs
*
* OpenAPI spec version: 2.0
* Contact: developers@squareup.com
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "SQError.h"
#import "SQSnippet.h"
@protocol SQError;
@class SQError;
@protocol SQSnippet;
@class SQSnippet;



@protocol SQRetrieveSnippetResponse
@end

@interface SQRetrieveSnippetResponse : SQObject

/* Any errors that occurred during the request. [optional]
 */
@property(nonatomic) NSArray<SQError>* errors;
/* The retrieved snippet. [optional]
 */
@property(nonatomic) SQSnippet* snippet;

@end
