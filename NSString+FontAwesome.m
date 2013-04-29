//
//  NSString+FontAwesome.m
//
//  Copyright (c) 2012 Alex Usbergo. All rights reserved.
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//

#import "NSString+FontAwesome.h"

@implementation NSString (FontAwesome)

#pragma mark - public

/* Returns the correct enum for a font-awesome icon.
 * The list of identifiers can be found here:
 * http://fortawesome.github.com/Font-awesome/#all-icons */
+ (FAIcon)fontAwesomeEnumForIconIdentifier:(NSString*)string
{
    NSDictionary *enums = [self enumDictionary];
    return [enums[string] integerValue];
}

/* Returns the font-awesome character associated to the
 * icon enum passed as argument */
+ (NSString*)fontAwesomeIconStringForEnum:(FAIcon)value
{
    return [self fontAwesomeIcons][value];
}

/* Returns the font-awesome character associated to the font-awesome
 * identifier.
 * http://fortawesome.github.com/Font-awesome/#all-icons */
+ (NSString*)fontAwesomeIconStringForIconIdentifier:(NSString*)identifier
{
    return [self fontAwesomeIconStringForEnum:[self fontAwesomeEnumForIconIdentifier:identifier]];
}

#pragma mark - data initialization

+ (NSArray*)fontAwesomeIcons
{
    static NSArray *fontAwesomeIcons;
    if (nil == fontAwesomeIcons) {
        fontAwesomeIcons = @[
                             @"\uf000",
                             @"\uf001",
                             @"\uf002",
                             @"\uf003",
                             @"\uf004",
                             @"\uf005",
                             @"\uf006",
                             @"\uf007",
                             @"\uf008",
                             @"\uf009",
                             @"\uf00a",
                             @"\uf00b",
                             @"\uf00c",
                             @"\uf00d",
                             @"\uf00e",
                             
                             @"\uf010",
                             @"\uf011",
                             @"\uf012",
                             @"\uf013",
                             @"\uf014",
                             @"\uf015",
                             @"\uf016",
                             @"\uf017",
                             @"\uf018",
                             @"\uf019",
                             @"\uf01a",
                             @"\uf01b",
                             @"\uf01c",
                             @"\uf01d",
                             @"\uf01e",
                             
                             @"\uf021",
                             @"\uf022",
                             @"\uf023",
                             @"\uf024",
                             @"\uf025",
                             @"\uf026",
                             @"\uf027",
                             @"\uf028",
                             @"\uf029",
                             @"\uf02a",
                             @"\uf02b",
                             @"\uf02c",
                             @"\uf02d",
                             @"\uf02e",
                             @"\uf02f",
                             
                             @"\uf030",
                             @"\uf031",
                             @"\uf032",
                             @"\uf033",
                             @"\uf034",
                             @"\uf035",
                             @"\uf036",
                             @"\uf037",
                             @"\uf038",
                             @"\uf039",
                             @"\uf03a",
                             @"\uf03b",
                             @"\uf03c",
                             @"\uf03d",
                             @"\uf03e",
                             
                             @"\uf040",
                             @"\uf041",
                             @"\uf042",
                             @"\uf043",
                             @"\uf044",
                             @"\uf045",
                             @"\uf046",
                             @"\uf047",
                             @"\uf048",
                             @"\uf049",
                             @"\uf04a",
                             @"\uf04b",
                             @"\uf04c",
                             @"\uf04d",
                             @"\uf04e",
                             
                             @"\uf050",
                             @"\uf051",
                             @"\uf052",
                             @"\uf053",
                             @"\uf054",
                             @"\uf055",
                             @"\uf056",
                             @"\uf057",
                             @"\uf058",
                             @"\uf059",
                             @"\uf05a",
                             @"\uf05b",
                             @"\uf05c",
                             @"\uf05d",
                             @"\uf05e",
                             
                             @"\uf060",
                             @"\uf061",
                             @"\uf062",
                             @"\uf063",
                             @"\uf064",
                             @"\uf065",
                             @"\uf066",
                             @"\uf067",
                             @"\uf068",
                             @"\uf069",
                             @"\uf06a",
                             @"\uf06b",
                             @"\uf06c",
                             @"\uf06d",
                             @"\uf06e",
                             
                             @"\uf070",
                             @"\uf071",
                             @"\uf072",
                             @"\uf073",
                             @"\uf074",
                             @"\uf075",
                             @"\uf076",
                             @"\uf077",
                             @"\uf078",
                             @"\uf079",
                             @"\uf07a",
                             @"\uf07b",
                             @"\uf07c",
                             @"\uf07d",
                             @"\uf07e",
                             
                             @"\uf080",
                             @"\uf081",
                             @"\uf082",
                             @"\uf083",
                             @"\uf084",
                             @"\uf085",
                             @"\uf086",
                             @"\uf087",
                             @"\uf088",
                             @"\uf089",
                             @"\uf08a",
                             @"\uf08b",
                             @"\uf08c",
                             @"\uf08d",
                             @"\uf08e",
                             
                             @"\uf090",
                             @"\uf091",
                             @"\uf092",
                             @"\uf093",
                             @"\uf094",
                             @"\uf095",
                             @"\uf096",
                             @"\uf097",
                             @"\uf098",
                             @"\uf099",
                             @"\uf09a",
                             @"\uf09b",
                             @"\uf09c",
                             @"\uf09d",
                             @"\uf09e",
                             
                             @"\uf0a0",
                             @"\uf0a1",
                             @"\uf0a2",
                             @"\uf0a3",
                             @"\uf0a4",
                             @"\uf0a5",
                             @"\uf0a6",
                             @"\uf0a7",
                             @"\uf0a8",
                             @"\uf0a9",
                             @"\uf0aa",
                             @"\uf0ab",
                             @"\uf0ac",
                             @"\uf0ad",
                             @"\uf0ae",
                             
                             @"\uf0b0",
                             @"\uf0b1",
                             @"\uf0b2",
                             
                             @"\uf0c0",
                             @"\uf0c1",
                             @"\uf0c2",
                             @"\uf0c3",
                             @"\uf0c4",
                             @"\uf0c5",
                             @"\uf0c6",
                             @"\uf0c7",
                             @"\uf0c8",
                             @"\uf0c9",
                             @"\uf0ca",
                             @"\uf0cb",
                             @"\uf0cc",
                             @"\uf0cd",
                             @"\uf0ce",
                             
                             @"\uf0d0",
                             @"\uf0d1",
                             @"\uf0d2",
                             @"\uf0d3",
                             @"\uf0d4",
                             @"\uf0d5",
                             @"\uf0d6",
                             @"\uf0d7",
                             @"\uf0d8",
                             @"\uf0d9",
                             @"\uf0da",
                             @"\uf0db",
                             @"\uf0dc",
                             @"\uf0dd",
                             @"\uf0de",
                             
                             @"\uf0e0",
                             @"\uf0e1",
                             @"\uf0e2",
                             @"\uf0e3",
                             @"\uf0e4",
                             @"\uf0e5",
                             @"\uf0e6",
                             @"\uf0e7",
                             @"\uf0e8",
                             @"\uf0e9",
                             @"\uf0ea",
                             @"\uf0eb",
                             @"\uf0ec",
                             @"\uf0ed",
                             @"\uf0ee",
                             
                             @"\uf0f0",
                             @"\uf0f1",
                             @"\uf0f2",
                             @"\uf0f3",
                             @"\uf0f4",
                             @"\uf0f5",
                             @"\uf0f6",
                             @"\uf0f7",
                             @"\uf0f8",
                             @"\uf0f9",
                             @"\uf0fa",
                             @"\uf0fb",
                             @"\uf0fc",
                             @"\uf0fd",
                             @"\uf0fe",
                             
                             @"\uf100",
                             @"\uf101",
                             @"\uf102",
                             @"\uf103",
                             @"\uf104",
                             @"\uf105",
                             @"\uf106",
                             @"\uf107",
                             @"\uf108",
                             @"\uf109",
                             @"\uf10a",
                             @"\uf10b",
                             @"\uf10c",
                             @"\uf10d",
                             @"\uf10e",
                             
                             @"\uf110",
                             @"\uf111",
                             @"\uf112",
                             @"\uf113",
                             @"\uf114",
                             @"\uf115"
                             ];
    }
    return fontAwesomeIcons;
}

+ (NSDictionary*)enumDictionary
{
	static NSDictionary *enumDictionary;
	if (nil == enumDictionary) {
		NSMutableDictionary *tmp = [[NSMutableDictionary alloc] init];
		tmp[@"icon-glass"] = @(FAIconGlass);
		tmp[@"icon-music"] = @(FAIconMusic);
		tmp[@"icon-search"] = @(FAIconSearch);
		tmp[@"icon-envelope"] = @(FAIconEnvelope);
		tmp[@"icon-heart"] = @(FAIconHeart);
		tmp[@"icon-star"] = @(FAIconStar);
		tmp[@"icon-star-empty"] = @(FAIconStarEmpty);
		tmp[@"icon-user"] = @(FAIconUser);
		tmp[@"icon-film"] = @(FAIconFilm);
		tmp[@"icon-th-large"] = @(FAIconThLarge);
		tmp[@"icon-th"] = @(FAIconTh);
		tmp[@"icon-th-list"] = @(FAIconThList);
		tmp[@"icon-ok"] = @(FAIconOk);
		tmp[@"icon-remove"] = @(FAIconRemove);
		tmp[@"icon-zoom-in"] = @(FAIconZoomIn);
        
		tmp[@"icon-zoom-out"] = @(FAIconZoomOut);
		tmp[@"icon-off"] = @(FAIconOff);
		tmp[@"icon-signal"] = @(FAIconSignal);
		tmp[@"icon-cog"] = @(FAIconCog);
		tmp[@"icon-trash"] = @(FAIconTrash);
		tmp[@"icon-home"] = @(FAIconHome);
		tmp[@"icon-file"] = @(FAIconFile);
		tmp[@"icon-time"] = @(FAIconTime);
		tmp[@"icon-road"] = @(FAIconRoad);
		tmp[@"icon-download-alt"] = @(FAIconDownloadAlt);
		tmp[@"icon-download"] = @(FAIconDownload);
		tmp[@"icon-upload"] = @(FAIconUpload);
		tmp[@"icon-inbox"] = @(FAIconInbox);
		tmp[@"icon-play-circle"] = @(FAIconPlayCircle);
		tmp[@"icon-repeat"] = @(FAIconRepeat);
        
        
		tmp[@"icon-refresh"] = @(FAIconRefresh);
		tmp[@"icon-list-alt"] = @(FAIconListAlt);
		tmp[@"icon-lock"] = @(FAIconLock);
		tmp[@"icon-flag"] = @(FAIconFlag);
		tmp[@"icon-headphones"] = @(FAIconHeadphones);
		tmp[@"icon-volume-off"] = @(FAIconVolumeOff);
		tmp[@"icon-volume-down"] = @(FAIconVolumeDown);
		tmp[@"icon-volume-up"] = @(FAIconVolumeUp);
		tmp[@"icon-qrcode"] = @(FAIconQrcode);
		tmp[@"icon-barcode"] = @(FAIconBarcode);
		tmp[@"icon-tag"] = @(FAIconTag);
		tmp[@"icon-tags"] = @(FAIconTags);
		tmp[@"icon-book"] = @(FAIconBook);
		tmp[@"icon-bookmark"] = @(FAIconBookmark);
		tmp[@"icon-print"] = @(FAIconPrint);
        
		tmp[@"icon-camera"] = @(FAIconCamera);
		tmp[@"icon-font"] = @(FAIconFont);
		tmp[@"icon-bold"] = @(FAIconBold);
		tmp[@"icon-italic"] = @(FAIconItalic);
		tmp[@"icon-text-height"] = @(FAIconTextHeight);
		tmp[@"icon-text-width"] = @(FAIconTextWidth);
		tmp[@"icon-align-left"] = @(FAIconAlignLeft);
		tmp[@"icon-align-center"] = @(FAIconAlignCenter);
		tmp[@"icon-align-right"] = @(FAIconAlignRight);
		tmp[@"icon-align-justify"] = @(FAIconAlignJustify);
		tmp[@"icon-list"] = @(FAIconList);
		tmp[@"icon-indent-left"] = @(FAIconIndentLeft);
		tmp[@"icon-indent-right"] = @(FAIconIndentRight);
		tmp[@"icon-facetime-video"] = @(FAIconFacetimeVideo);
		tmp[@"icon-picture"] = @(FAIconPicture);
        
		tmp[@"icon-pencil"] = @(FAIconPencil);
		tmp[@"icon-map-marker"] = @(FAIconMapMarker);
		tmp[@"icon-adjust"] = @(FAIconAdjust);
		tmp[@"icon-tint"] = @(FAIconTint);
		tmp[@"icon-edit"] = @(FAIconEdit);
		tmp[@"icon-share"] = @(FAIconShare);
		tmp[@"icon-check"] = @(FAIconCheck);
		tmp[@"icon-move"] = @(FAIconMove);
		tmp[@"icon-step-backward"] = @(FAIconStepBackward);
		tmp[@"icon-fast-backward"] = @(FAIconFastBackward);
		tmp[@"icon-backward"] = @(FAIconBackward);
		tmp[@"icon-play"] = @(FAIconPlay);
		tmp[@"icon-pause"] = @(FAIconPause);
		tmp[@"icon-stop"] = @(FAIconStop);
		tmp[@"icon-forward"] = @(FAIconForward);
        
		tmp[@"icon-fast-forward"] = @(FAIconFastForward);
		tmp[@"icon-step-forward"] = @(FAIconStepForward);
		tmp[@"icon-eject"] = @(FAIconEject);
		tmp[@"icon-chevron-left"] = @(FAIconChevronLeft);
		tmp[@"icon-chevron-right"] = @(FAIconChevronRight);
		tmp[@"icon-plus-sign"] = @(FAIconPlusSign);
		tmp[@"icon-minus-sign"] = @(FAIconMinusSign);
		tmp[@"icon-remove-sign"] = @(FAIconRemoveSign);
		tmp[@"icon-ok-sign"] = @(FAIconOkSign);
		tmp[@"icon-question-sign"] = @(FAIconQuestionSign);
		tmp[@"icon-info-sign"] = @(FAIconInfoSign);
		tmp[@"icon-screenshot"] = @(FAIconScreenshot);
		tmp[@"icon-remove-circle"] = @(FAIconRemoveCircle);
		tmp[@"icon-ok-circle"] = @(FAIconOkCircle);
		tmp[@"icon-ban-circle"] = @(FAIconBanCircle);
        
		tmp[@"icon-arrow-left"] = @(FAIconArrowLeft);
		tmp[@"icon-arrow-right"] = @(FAIconArrowRight);
		tmp[@"icon-arrow-up"] = @(FAIconArrowUp);
		tmp[@"icon-arrow-down"] = @(FAIconArrowDown);
		tmp[@"icon-share-alt"] = @(FAIconShareAlt);
		tmp[@"icon-resize-full"] = @(FAIconResizeFull);
		tmp[@"icon-resize-small"] = @(FAIconResizeSmall);
		tmp[@"icon-plus"] = @(FAIconPlus);
		tmp[@"icon-minus"] = @(FAIconMinus);
		tmp[@"icon-asterisk"] = @(FAIconAsterisk);
		tmp[@"icon-exclamation-sign"] = @(FAIconExclamationSign);
		tmp[@"icon-gift"] = @(FAIconGift);
		tmp[@"icon-leaf"] = @(FAIconLeaf);
		tmp[@"icon-fire"] = @(FAIconFire);
		tmp[@"icon-eye-open"] = @(FAIconEyeOpen);
        
		tmp[@"icon-eye-close"] = @(FAIconEyeClose);
		tmp[@"icon-warning-sign"] = @(FAIconWarningSign);
		tmp[@"icon-plane"] = @(FAIconPlane);
		tmp[@"icon-calendar"] = @(FAIconCalendar);
		tmp[@"icon-random"] = @(FAIconRandom);
		tmp[@"icon-comment"] = @(FAIconComment);
		tmp[@"icon-magnet"] = @(FAIconMagnet);
		tmp[@"icon-chevron-up"] = @(FAIconChevronUp);
		tmp[@"icon-chevron-down"] = @(FAIconChevronDown);
		tmp[@"icon-retweet"] = @(FAIconRetweet);
		tmp[@"icon-shopping-cart"] = @(FAIconShoppingCart);
		tmp[@"icon-folder-close"] = @(FAIconFolderClose);
		tmp[@"icon-folder-open"] = @(FAIconFolderOpen);
		tmp[@"icon-resize-vertical"] = @(FAIconResizeVertical);
		tmp[@"icon-resize-horizontal"] = @(FAIconResizeHorizontal);
        
		tmp[@"icon-bar-chart"] = @(FAIconBarChart);
		tmp[@"icon-twitter-sign"] = @(FAIconTwitterSign);
		tmp[@"icon-facebook-sign"] = @(FAIconFacebookSign);
		tmp[@"icon-camera-retro"] = @(FAIconCameraRetro);
		tmp[@"icon-key"] = @(FAIconKey);
		tmp[@"icon-cogs"] = @(FAIconCogs);
		tmp[@"icon-comments"] = @(FAIconComments);
		tmp[@"icon-thumbs-up"] = @(FAIconThumbsUp);
		tmp[@"icon-thumbs-down"] = @(FAIconThumbsDown);
		tmp[@"icon-star-half"] = @(FAIconStarHalf);
		tmp[@"icon-heart-empty"] = @(FAIconHeartEmpty);
		tmp[@"icon-signout"] = @(FAIconSignout);
		tmp[@"icon-linkedin-sign"] = @(FAIconLinkedinSign);
		tmp[@"icon-pushpin"] = @(FAIconPushpin);
		tmp[@"icon-external-link"] = @(FAIconExternalLink);
        
		tmp[@"icon-signin"] = @(FAIconSignin);
		tmp[@"icon-trophy"] = @(FAIconTrophy);
		tmp[@"icon-github-sign"] = @(FAIconGithubSign);
		tmp[@"icon-upload-alt"] = @(FAIconUploadAlt);
		tmp[@"icon-lemon"] = @(FAIconLemon);
		tmp[@"icon-phone"] = @(FAIconPhone);
		tmp[@"icon-check-empty"] = @(FAIconCheckEmpty);
		tmp[@"icon-bookmark-empty"] = @(FAIconBookmarkEmpty);
		tmp[@"icon-phone-sign"] = @(FAIconPhoneSign);
		tmp[@"icon-twitter"] = @(FAIconTwitter);
		tmp[@"icon-facebook"] = @(FAIconFacebook);
		tmp[@"icon-github"] = @(FAIconGithub);
		tmp[@"icon-unlock"] = @(FAIconUnlock);
		tmp[@"icon-credit-card"] = @(FAIconCreditCard);
		tmp[@"icon-rss"] = @(FAIconRss);
        
		tmp[@"icon-hdd"] = @(FAIconHdd);
		tmp[@"icon-bullhorn"] = @(FAIconBullhorn);
		tmp[@"icon-bell"] = @(FAIconBell);
		tmp[@"icon-certificate"] = @(FAIconCertificate);
		tmp[@"icon-hand-right"] = @(FAIconHandRight);
		tmp[@"icon-hand-left"] = @(FAIconHandLeft);
		tmp[@"icon-hand-up"] = @(FAIconHandUp);
		tmp[@"icon-hand-down"] = @(FAIconHandDown);
		tmp[@"icon-circle-arrow-left"] = @(FAIconCircleArrowLeft);
		tmp[@"icon-circle-arrow-right"] = @(FAIconCircleArrowRight);
		tmp[@"icon-circle-arrow-up"] = @(FAIconCircleArrowUp);
		tmp[@"icon-circle-arrow-down"] = @(FAIconCircleArrowDown);
		tmp[@"icon-globe"] = @(FAIconGlobe);
		tmp[@"icon-wrench"] = @(FAIconWrench);
		tmp[@"icon-tasks"] = @(FAIconTasks);
        
		tmp[@"icon-filter"] = @(FAIconFilter);
		tmp[@"icon-briefcase"] = @(FAIconBriefcase);
		tmp[@"icon-fullscreen"] = @(FAIconFullscreen);
        
		tmp[@"icon-group"] = @(FAIconGroup);
		tmp[@"icon-link"] = @(FAIconLink);
		tmp[@"icon-cloud"] = @(FAIconCloud);
		tmp[@"icon-beaker"] = @(FAIconBeaker);
		tmp[@"icon-cut"] = @(FAIconCut);
		tmp[@"icon-copy"] = @(FAIconCopy);
		tmp[@"icon-paper-clip"] = @(FAIconPaperClip);
		tmp[@"icon-save"] = @(FAIconSave);
		tmp[@"icon-sign-blank"] = @(FAIconSignBlank);
		tmp[@"icon-reorder"] = @(FAIconReorder);
		tmp[@"icon-list-ul"] = @(FAIconListUl);
		tmp[@"icon-list-ol"] = @(FAIconListOl);
		tmp[@"icon-strikethrough"] = @(FAIconStrikethrough);
		tmp[@"icon-underline"] = @(FAIconUnderline);
		tmp[@"icon-table"] = @(FAIconTable);
        
		tmp[@"icon-magic"] = @(FAIconMagic);
		tmp[@"icon-truck"] = @(FAIconTruck);
		tmp[@"icon-pinterest"] = @(FAIconPinterest);
		tmp[@"icon-pinterest-sign"] = @(FAIconPinterestSign);
		tmp[@"icon-google-plus-sign"] = @(FAIconGooglePlusSign);
		tmp[@"icon-google-plus"] = @(FAIconGooglePlus);
		tmp[@"icon-money"] = @(FAIconMoney);
		tmp[@"icon-caret-down"] = @(FAIconCaretDown);
		tmp[@"icon-caret-up"] = @(FAIconCaretUp);
		tmp[@"icon-caret-left"] = @(FAIconCaretLeft);
		tmp[@"icon-caret-right"] = @(FAIconCaretRight);
		tmp[@"icon-columns"] = @(FAIconColumns);
		tmp[@"icon-sort"] = @(FAIconSort);
		tmp[@"icon-sort-down"] = @(FAIconSortDown);
		tmp[@"icon-sort-up"] = @(FAIconSortUp);
        
		tmp[@"icon-envelope-alt"] = @(FAIconEnvelopeAlt);
		tmp[@"icon-linkedin"] = @(FAIconLinkedin);
		tmp[@"icon-undo"] = @(FAIconUndo);
		tmp[@"icon-legal"] = @(FAIconLegal);
		tmp[@"icon-dashboard"] = @(FAIconDashboard);
		tmp[@"icon-comment-alt"] = @(FAIconCommentAlt);
		tmp[@"icon-comments-alt"] = @(FAIconCommentsAlt);
		tmp[@"icon-bolt"] = @(FAIconBolt);
		tmp[@"icon-sitemap"] = @(FAIconSitemap);
		tmp[@"icon-umbrella"] = @(FAIconUmbrella);
		tmp[@"icon-paste"] = @(FAIconPaste);
		tmp[@"icon-lightbulb"] = @(FAIconLightbulb);
		tmp[@"icon-exchange"] = @(FAIconExchange);
		tmp[@"icon-cloud-download"] = @(FAIconCloudDownload);
		tmp[@"icon-cloud-upload"] = @(FAIconCloudUpload);
        
		tmp[@"icon-user-md"] = @(FAIconUserMd);
		tmp[@"icon-stethoscope"] = @(FAIconStethoscope);
		tmp[@"icon-suitcase"] = @(FAIconSuitcase);
		tmp[@"icon-bell-alt"] = @(FAIconBellAlt);
		tmp[@"icon-coffee"] = @(FAIconCoffee);
		tmp[@"icon-food"] = @(FAIconFood);
		tmp[@"icon-file-alt"] = @(FAIconFileAlt);
		tmp[@"icon-building"] = @(FAIconBuilding);
		tmp[@"icon-hospital"] = @(FAIconHospital);
		tmp[@"icon-ambulance"] = @(FAIconAmbulance);
		tmp[@"icon-medkit"] = @(FAIconMedkit);
		tmp[@"icon-fighter-jet"] = @(FAIconFighterJet);
		tmp[@"icon-beer"] = @(FAIconBeer);
		tmp[@"icon-h-sign"] = @(FAIconHSign);
		tmp[@"icon-plus-sign-alt"] = @(FAIconPlusSignAlt);

		tmp[@"icon-double-angle-left"] = @(FAIconDoubleAngleLeft);
		tmp[@"icon-double-angle-right"] = @(FAIconDoubleAngleRight);
		tmp[@"icon-double-angle-up"] = @(FAIconDoubleAngleUp);
		tmp[@"icon-double-angle-down"] = @(FAIconDoubleAngleDown);
		tmp[@"icon-angle-left"] = @(FAIconAngleLeft);
		tmp[@"icon-angle-right"] = @(FAIconAngleRight);
		tmp[@"icon-angle-up"] = @(FAIconAngleUp);
		tmp[@"icon-angle-down"] = @(FAIconAngleDown);
		tmp[@"icon-desktop"] = @(FAIconDesktop);
		tmp[@"icon-laptop"] = @(FAIconLaptop);
		tmp[@"icon-tablet"] = @(FAIconTablet);
		tmp[@"icon-mobile-phone"] = @(FAIconMobilePhone);
		tmp[@"icon-circle-blank"] = @(FAIconCircleBlank);
		tmp[@"icon-quote-left"] = @(FAIconQuoteLeft);
		tmp[@"icon-quote-right"] = @(FAIconQuoteRight);

		tmp[@"icon-spinner"] = @(FAIconSpinner);
		tmp[@"icon-circle"] = @(FAIconCircle);
		tmp[@"icon-reply"] = @(FAIconReply);
		tmp[@"icon-github-alt"] = @(FAIconGithubAlt);
		tmp[@"icon-folder-close-alt"] = @(FAIconFolderCloseAlt);
		tmp[@"icon-folder-open-alt"] = @(FAIconFolderOpenAlt);

		enumDictionary = tmp;
	}
    
    return enumDictionary;
}

@end
