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


#import "SQMeasurementUnit.h"
@protocol SQMeasurementUnit;
@class SQMeasurementUnit;



@protocol SQCatalogMeasurementUnit
@end

@interface SQCatalogMeasurementUnit : SQObject

/* Indicates the unit used to measure the quantity of a catalog item variation. [optional]
 */
@property(nonatomic) SQMeasurementUnit* measurementUnit;
/* An integer between 0 and 5 that represents the maximum number of positions allowed after the decimal in quantities measured with this unit. For example:  - if the precision is 0, the quantity can be 1, 2, 3, etc. - if the precision is 1, the quantity can be 0.1, 0.2, etc. - if the precision is 2, the quantity can be 0.01, 0.12, etc.  Default: 3 [optional]
 */
@property(nonatomic) NSNumber* precision;

@end