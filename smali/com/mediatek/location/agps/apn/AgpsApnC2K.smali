.class public Lcom/mediatek/location/agps/apn/AgpsApnC2K;
.super Ljava/lang/Object;
.source "AgpsApnC2K.java"


# instance fields
.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mToAgpsSender:Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

.field private mUdpClient:Lcom/mediatek/socket/base/UdpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;Lcom/mediatek/socket/base/UdpClient;Landroid/os/Handler;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/mediatek/location/agps/apn/AgpsApnC2K$1;

    invoke-direct {v0, p0}, Lcom/mediatek/location/agps/apn/AgpsApnC2K$1;-><init>(Lcom/mediatek/location/agps/apn/AgpsApnC2K;)V

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v1, Lcom/mediatek/location/agps/apn/AgpsApnC2K$2;

    invoke-direct {v1, p0}, Lcom/mediatek/location/agps/apn/AgpsApnC2K$2;-><init>(Lcom/mediatek/location/agps/apn/AgpsApnC2K;)V

    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 102
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mConnManager:Landroid/net/ConnectivityManager;

    .line 104
    iput-object p3, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mToAgpsSender:Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    .line 105
    iput-object p4, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mUdpClient:Lcom/mediatek/socket/base/UdpClient;

    .line 106
    iput-object p5, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->isAirplaneModeOn()Z

    move-result p2

    invoke-virtual {p3, p4, p2}, Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;->AirplaneModeChanged(Lcom/mediatek/socket/base/UdpClient;Z)Z

    .line 109
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/location/agps/apn/AgpsApnC2K;)Lcom/mediatek/socket/base/UdpClient;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mUdpClient:Lcom/mediatek/socket/base/UdpClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/location/agps/apn/AgpsApnC2K;)Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mToAgpsSender:Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    return-object p0
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .locals 1

    .line 380
    iget p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mAGpsDataConnectionState:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "<Unknown>"

    return-object p0

    :cond_0
    const-string p0, "OPEN"

    return-object p0

    :cond_1
    const-string p0, "OPENING"

    return-object p0

    :cond_2
    const-string p0, "CLOSED"

    return-object p0
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const-string p0, "<Unknown>"

    return-object p0

    :cond_0
    const-string p0, "FAILED"

    return-object p0

    :cond_1
    const-string p0, "DONE"

    return-object p0

    :cond_2
    const-string p0, "CONNECTED"

    return-object p0

    :cond_3
    const-string p0, "RELEASE"

    return-object p0

    :cond_4
    const-string p0, "REQUEST"

    return-object p0
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .locals 10

    const-string v0, "AgpsApnC2K"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string v3, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    .line 302
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    .line 305
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "protocol"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "name ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 312
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return p0

    .line 315
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No entry found in query for APN: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 318
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error encountered on APN query for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 321
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_3
    throw p0
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 8

    const-string v0, "AgpsApnC2K"

    const-string v1, "content://telephony/carriers/preferapn"

    .line 272
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    .line 275
    :try_start_0
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "apn"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 281
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 282
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v2, "No APN found to select."

    .line 284
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object p0, v1

    :goto_0
    :try_start_3
    const-string v3, "Error encountered on selecting the APN."

    .line 287
    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_1

    .line 290
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_2
    throw v0
.end method

.method private releaseSuplConnection(I)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 353
    invoke-direct {p0}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 354
    invoke-direct {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "releaseSuplConnection, state=%s, status=%s"

    .line 351
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AgpsApnC2K"

    .line 355
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget v1, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mAGpsDataConnectionState:I

    if-nez v1, :cond_0

    return-void

    .line 361
    :cond_0
    iput v3, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mAGpsDataConnectionState:I

    .line 363
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 372
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid status to release SUPL connection: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_1
    iget-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mToAgpsSender:Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mUdpClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {p1, p0}, Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;->C2kApnFailed(Lcom/mediatek/socket/base/UdpClient;)Z

    goto :goto_0

    .line 369
    :cond_2
    iget-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mToAgpsSender:Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mUdpClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {p1, p0}, Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;->C2kApnClosed(Lcom/mediatek/socket/base/UdpClient;)Z

    :goto_0
    return-void
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const-string p0, "IP"

    .line 329
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "IPV6"

    .line 332
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const-string p0, "IPV4V6"

    .line 335
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    new-array p0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    aput-object p2, p0, v0

    const-string p1, "Unknown IP Protocol: %s, for APN: %s"

    .line 340
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AgpsApnC2K"

    .line 341
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method handleNetworkCallback(ILjava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "AgpsApnC2K"

    const-string v4, "handleNetworkCallback"

    .line 191
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    instance-of v4, v2, Landroid/net/Network;

    if-eqz v4, :cond_9

    .line 194
    check-cast v2, Landroid/net/Network;

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkCallback, error state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 259
    :cond_0
    invoke-direct {v0, v4}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->releaseSuplConnection(I)V

    goto/16 :goto_3

    .line 255
    :cond_1
    invoke-direct {v0, v5}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->releaseSuplConnection(I)V

    goto/16 :goto_3

    .line 203
    :cond_2
    iget-object v1, v0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 204
    iget-object v7, v0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 205
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v7

    .line 206
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v9

    :goto_0
    const/4 v8, 0x0

    .line 209
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-eq v10, v6, :cond_4

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->getSelectedApn()Ljava/lang/String;

    move-result-object v8

    :cond_4
    const-string v10, "dummy-apn"

    if-nez v8, :cond_5

    move-object v8, v10

    .line 218
    :cond_5
    iget v11, v0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mAGpsDataConnectionState:I

    if-ne v11, v6, :cond_8

    .line 219
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 220
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    move-object v10, v4

    .line 226
    :goto_1
    invoke-direct {v0, v10}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->getApnIpType(Ljava/lang/String;)I

    move-result v4

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v10, v11, v9

    .line 231
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v6

    const-string v6, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    .line 228
    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 232
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput v5, v0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mAGpsDataConnectionState:I

    move v9, v4

    goto :goto_2

    .line 236
    :cond_7
    invoke-direct {v0, v4}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->releaseSuplConnection(I)V

    :cond_8
    :goto_2
    move-object v4, v10

    .line 240
    iget-object v10, v0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mToAgpsSender:Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    iget-object v11, v0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mUdpClient:Lcom/mediatek/socket/base/UdpClient;

    invoke-virtual {v2}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v5

    const/16 v0, 0x20

    shr-long/2addr v5, v0

    long-to-int v12, v5

    .line 241
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v15

    .line 242
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v17

    move/from16 v16, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v4

    move/from16 v20, v9

    .line 240
    invoke-virtual/range {v10 .. v20}, Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;->C2kApnResult(Lcom/mediatek/socket/base/UdpClient;IZIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RequestDataConnResult, netId = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v10

    shr-long/2addr v10, v0

    long-to-int v0, v10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", NetworkInfo = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkAvailable = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", defaultApn = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", apnName = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", apnIpType = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ret = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    .line 196
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong obj, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method handleReleaseDataConn()V
    .locals 1

    const/4 v0, 0x2

    .line 268
    invoke-direct {p0, v0}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->releaseSuplConnection(I)V

    return-void
.end method

.method handleRequestDataConn(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "AgpsApnC2K"

    const-string v1, "handleRequestDataConn"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    instance-of v1, p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    if-eqz v1, :cond_3

    .line 155
    check-cast p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    if-eqz p1, :cond_2

    .line 162
    iget-object p1, p1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mAddr:[B

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SUPL IP addr[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 167
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP address converted to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad IP Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    :goto_0
    iget p1, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mAGpsDataConnectionState:I

    if-eqz p1, :cond_1

    return-void

    .line 177
    :cond_1
    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    const/4 p1, 0x1

    .line 178
    iput p1, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mAGpsDataConnectionState:I

    .line 180
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 182
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 184
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_2
    return-void

    .line 157
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong obj, "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method isAirplaneModeOn()Z
    .locals 2

    .line 413
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method sendMessage(IILjava/lang/Object;)V
    .locals 1

    .line 346
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
