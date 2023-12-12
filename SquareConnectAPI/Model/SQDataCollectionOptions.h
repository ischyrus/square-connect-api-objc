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


#import "SQCollectedData.h"
@protocol SQCollectedData;
@class SQCollectedData;



@protocol SQDataCollectionOptions
@end

@interface SQDataCollectionOptions : SQObject

/* The title text to display in the data collection flow on the Terminal. 
 */
@property(nonatomic) NSString* title;
/* The body text to display under the title in the data collection screen flow on the Terminal. 
 */
@property(nonatomic) NSString* body;
/* Represents the type of the input text. 
 */
@property(nonatomic) NSString* inputType;
/* The buyer’s input text from the data collection screen. [optional]
 */
@property(nonatomic) SQCollectedData* collectedData;

@end
