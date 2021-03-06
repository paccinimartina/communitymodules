/*
 *  OsiriXMeVisLabBridgePlugin.h
 *  OsiriXMeVisLabBridgePlugin
 *
 *  Created by Felix Ritter on 18.01.08.
 *  This code is in the public domain.
 */

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
#pragma GCC diagnostic ignored "-Wmissing-selector-name"
#pragma GCC diagnostic ignored "-Wduplicate-method-match"
#import <OsiriXAPI/PluginFilter.h>
#pragma GCC diagnostic pop

#import <Foundation/Foundation.h>
#import <mlOsiriXServicesProtocol.h>

@class ToolPopUpButton;

@interface OsiriXMeVisLabBridgePlugin : PluginFilter <MLOsiriXServices> {
@private
  id proxy;
  
  // Connection allows MeVisLab to send messages to OsiriX
  NSConnection *incomingConnection;
  
  NSMutableDictionary *targets;
  
  ToolPopUpButton *targetPopUp;
}

- (long) filterImage: (NSString *)menuName;

- (void) initPlugin;
- (void) finalizePlugin;
- (void) dealloc;

- (OBTargetIdentifier) registerTargetWithName:(NSString *)name status:(MLOSStatus *)status;
- (MLOSStatus) unregisterTargetWithIdentifier:(OBTargetIdentifier)identifier;
- (void) indicateTargetsAvailable: (BOOL)flag;

- (BOOL) connectAndReturnError: (NSError **)error;
- (void) connectionDidDie: (NSNotification *)notification;
- (void) connectionCleanup;

- (void) OsiriXWillTerminate: (NSNotification *)notification;
- (void) OsiriXXMLRPCMessage: (NSNotification *)notification;

- (NSString *) osirixIncomingFolderPath;

- (BOOL) sendSeriesWithFilename: (NSString *)filename toMeVisLabTargetWithIdentifier: (OBTargetIdentifier)identifier error: (NSError **)error;
- (BOOL) sendCurrentSeriesToMeVisLabTargetWithIdentifier: (OBTargetIdentifier)identifier error: (NSError **)error;
- (BOOL) sendCurrentSeriesToMeVisLabTargetWithName: (NSString *)name error: (NSError **)error;

- (NSArray *) fileListOfAnySerieInCurrentDatabaseSelection;
- (NSArray *) fileListOfCurrentDatabaseSelection;
- (NSArray *) fileListOfCurrentViewerSeries;

- (NSDictionary *) seriesInfoOfViewerDisplayingImageSeriesWithFilename:(NSString *)filename;

- (BOOL) isOsiriXVersionSupported;
@end
