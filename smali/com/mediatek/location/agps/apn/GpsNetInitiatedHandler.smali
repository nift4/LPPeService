.class public Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;
    }
.end annotation


# static fields
.field private static mIsHexInput:Z = true


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private volatile mCallEndElapsedRealtimeMillis:J

.field private final mContext:Landroid/content/Context;

.field mCurNotif:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;

.field private volatile mEmergencyExtensionMillis:J

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsLocationEnabled:Z

.field private volatile mIsSuplEsEnabled:Z

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mNetInitiatedListener:Lcom/mediatek/location/agps/apn/NetInitiatedListener;

.field private mNiNotificationBuilder:Landroid/app/Notification$Builder;

.field private mPlaySounds:Z

.field private mPopupImmediately:Z

.field private final mTelecom:Landroid/telecom/TelecomManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/location/agps/apn/NetInitiatedListener;Z)V
    .locals 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mPlaySounds:Z

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mPopupImmediately:Z

    .line 102
    iput-boolean v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    const-wide/16 v0, 0x0

    .line 110
    iput-wide v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    .line 111
    iput-wide v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    .line 136
    new-instance v0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$1;-><init>(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;)V

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 431
    new-instance v1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$4;

    invoke-direct {v1, p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$4;-><init>(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;)V

    iput-object v1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mHandler:Landroid/os/Handler;

    .line 158
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 163
    iput-object p2, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mNetInitiatedListener:Lcom/mediatek/location/agps/apn/NetInitiatedListener;

    .line 166
    invoke-virtual {p0, p3}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    const-string p2, "location"

    .line 167
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 168
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->updateLocationMode()V

    const-string p2, "phone"

    .line 170
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string p2, "telecom"

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/TelecomManager;

    iput-object p2, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mTelecom:Landroid/telecom/TelecomManager;

    .line 188
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.location.MODE_CHANGED"

    .line 189
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 161
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "netInitiatedListener is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;)Lcom/mediatek/location/agps/apn/NetInitiatedListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mNetInitiatedListener:Lcom/mediatek/location/agps/apn/NetInitiatedListener;

    return-object p0
.end method

.method static decodeGSMPackedString([B)Ljava/lang/String;
    .locals 3

    .line 483
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x8

    .line 484
    div-int/lit8 v1, v1, 0x7

    .line 491
    rem-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 493
    aget-byte v0, p0, v0

    shr-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    const/4 v0, 0x0

    .line 499
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "GpsNetInitiatedHandler"

    const-string v0, "Decoding of GSM packed string failed"

    .line 503
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method private static decodeString(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    invoke-static {p0, p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->stringToByteArray(Ljava/lang/String;Z)[B

    move-result-object p1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 567
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown encoding "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for NI text "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GpsNetInitiatedHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 564
    :cond_1
    invoke-static {p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->decodeUCS2String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 561
    :cond_2
    invoke-static {p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->decodeUTF8String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 558
    :cond_3
    invoke-static {p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->decodeGSMPackedString([B)Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method static decodeUCS2String([B)Ljava/lang/String;
    .locals 2

    .line 527
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-16"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 531
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method static decodeUTF8String([B)Ljava/lang/String;
    .locals 2

    .line 514
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 518
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private static getDialogMessage(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 606
    invoke-static {p0, p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getNotifMessage(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDialogTitle(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 600
    invoke-static {p0, p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getNotifTitle(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNotifMessage(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const v0, 0x10403d3

    .line 591
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v2, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v3, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 592
    invoke-static {v1, v2, v3}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v2, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 593
    invoke-static {v1, v2, p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 591
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNotifTicker(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const v0, 0x10403d4

    .line 575
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v2, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v3, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 576
    invoke-static {v1, v2, v3}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v2, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 577
    invoke-static {v1, v2, p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 575
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNotifTitle(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x10403d5

    .line 584
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleNi(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in handleNi () : needNotify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " needVerify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " privacyOverride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPopupImmediately: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mPopupImmediately:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mInEmergency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    .line 277
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mNetInitiatedListener:Lcom/mediatek/location/agps/apn/NetInitiatedListener;

    iget v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/mediatek/location/agps/apn/NetInitiatedListener;->sendNiResponse(II)Z

    .line 289
    :cond_0
    iget-boolean v0, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_2

    .line 292
    iget-boolean v0, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0, p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->openNiDialog(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_0

    .line 297
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->setNiNotification(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 302
    :cond_2
    :goto_0
    iget-boolean v0, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    if-eqz v0, :cond_4

    .line 303
    :cond_3
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mNetInitiatedListener:Lcom/mediatek/location/agps/apn/NetInitiatedListener;

    iget p1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/mediatek/location/agps/apn/NetInitiatedListener;->sendNiResponse(II)Z

    :cond_4
    return-void
.end method

.method private handleNiInEs(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in handleNiInEs () : niType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " notificationId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget v0, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 327
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getInEmergency()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 328
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mNetInitiatedListener:Lcom/mediatek/location/agps/apn/NetInitiatedListener;

    iget p1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-interface {p0, p1, v1}, Lcom/mediatek/location/agps/apn/NetInitiatedListener;->sendNiResponse(II)Z

    goto :goto_1

    .line 331
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->handleNi(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V

    :goto_1
    return-void
.end method

.method private openNiDialog(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 6

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openNiDialog, notifyId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getDialogTitle(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 404
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getDialogMessage(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 405
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 407
    iget-object v2, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const v3, 0x10403d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$2;

    invoke-direct {v3, p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$2;-><init>(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 415
    iget-object v2, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const v3, 0x10403d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$3;

    invoke-direct {v2, p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$3;-><init>(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 424
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 425
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 426
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mCurNotif:Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;

    .line 427
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mHandler:Landroid/os/Handler;

    iget p1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private declared-synchronized setNiNotification(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 7

    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 340
    monitor-exit p0

    return-void

    .line 343
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getNotifTitle(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 344
    iget-object v2, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getNotifMessage(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GpsNetInitiatedHandler"

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNiNotification, notifyId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 354
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 357
    iget-object v3, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 358
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080837

    .line 360
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v5, 0x0

    .line 361
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 362
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 363
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const v6, 0x106001c

    .line 364
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    .line 368
    :cond_1
    iget-boolean v3, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mPlaySounds:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 369
    iget-object v3, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 371
    :cond_2
    iget-object v3, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :goto_0
    const-string v3, "SHOULD_NOT_RESOLVE"

    .line 379
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 380
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v3, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 381
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v3, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const/high16 v6, 0x4000000

    invoke-static {v3, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 386
    iget-object v4, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getNotifTicker(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 387
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 388
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 389
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    .line 391
    iget p1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget-object v2, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mNiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static stringToByteArray(Ljava/lang/String;Z)[B
    .locals 4

    .line 453
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz p1, :cond_0

    div-int/lit8 v0, v0, 0x2

    .line 454
    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int/lit8 p1, v2, 0x2

    add-int/lit8 v3, p1, 0x2

    .line 461
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x10

    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    .line 467
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getInEmergency()Z
    .locals 7

    .line 228
    iget-wide v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mCallEndElapsedRealtimeMillis:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mEmergencyExtensionMillis:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 232
    :goto_0
    iget-object v3, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v3

    .line 233
    iget-object v4, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isInEmergencySmsMode()Z

    move-result v4

    .line 234
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mTelecom:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public getLocationEnabled()Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    return p0
.end method

.method public getSuplEsEnabled()Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mIsSuplEsEnabled:Z

    return p0
.end method

.method public handleNiNotification(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in handleNiNotification () : notificationId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requestorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIsSuplEsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getSuplEsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsLocationEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getLocationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GpsNetInitiatedHandler"

    .line 245
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->getSuplEsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->handleNiInEs(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->handleNi(Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler$GpsNiNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error encountered on NI handling."

    .line 259
    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setSuplEsEnabled(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mIsSuplEsEnabled:Z

    return-void
.end method

.method public updateLocationMode()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/location/agps/apn/GpsNetInitiatedHandler;->mIsLocationEnabled:Z

    return-void
.end method
