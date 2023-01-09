.class Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;
.super Ljava/lang/Object;
.source "AgpsApn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/agps/apn/AgpsApn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AgpsNetReq"
.end annotation


# instance fields
.field mAddr:[B

.field mFqdn:Ljava/lang/String;

.field mIsEsupl:Z

.field mIsQueried:Z

.field mIsReleased:Z

.field mIsSuplApn:Z

.field mNet:Landroid/net/Network;

.field mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mNetReq:Landroid/net/NetworkRequest;

.field mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field final synthetic this$0:Lcom/mediatek/location/agps/apn/AgpsApn;


# direct methods
.method public static synthetic $r8$lambda$qOJm2wO8rUcTehGztcxChl3xIxU(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 0

    invoke-static {p0, p1}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->lambda$getHostAddress$0(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/mediatek/location/agps/apn/AgpsApn;Ljava/lang/String;ZZ)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 504
    iput-boolean p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    .line 505
    iput-boolean p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    const/4 p1, 0x0

    .line 506
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    .line 507
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 508
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 509
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 512
    iput-object p2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;

    .line 513
    iput-boolean p3, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    .line 514
    iput-boolean p4, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsSuplApn:Z

    return-void
.end method

.method constructor <init>(Lcom/mediatek/location/agps/apn/AgpsApn;[BZ)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 504
    iput-boolean p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    .line 505
    iput-boolean p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    const/4 p1, 0x0

    .line 506
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    .line 507
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 508
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 509
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 518
    iput-object p2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mAddr:[B

    .line 519
    iput-boolean p3, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    return-void
.end method

.method private static synthetic lambda$getHostAddress$0(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 696
    invoke-virtual {p0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    .line 698
    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method decideRoute()V
    .locals 11

    const-string v0, "decideRoute()"

    .line 523
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 529
    array-length v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    move v6, v4

    move-object v4, v5

    :goto_0
    if-ge v6, v3, :cond_4

    aget-object v7, v0, v6

    .line 530
    iget-object v8, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v8}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    .line 531
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checking net="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " cap="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    if-nez v2, :cond_0

    if-eqz v8, :cond_0

    const/16 v9, 0xa

    .line 533
    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v2, "NetEmergemcy existed"

    .line 535
    invoke-static {v2}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    move-object v2, v7

    :cond_0
    if-nez v4, :cond_1

    if-eqz v8, :cond_1

    const/4 v9, 0x4

    .line 538
    invoke-virtual {v8, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v4, "NetIms existed"

    .line 540
    invoke-static {v4}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    move-object v4, v7

    :cond_1
    if-nez v5, :cond_2

    if-eqz v8, :cond_2

    .line 543
    invoke-virtual {v8, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v5, "NetSupl existed"

    .line 545
    invoke-static {v5}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    move-object v5, v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v5, v4

    .line 549
    :cond_4
    iget-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    if-eqz v0, :cond_6

    if-eqz v2, :cond_5

    .line 551
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$000(Lcom/mediatek/location/agps/apn/AgpsApn;)B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    const-string v0, "use NetEmergemcy"

    .line 552
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 553
    iput-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 554
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$600(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    return-void

    :cond_5
    if-eqz v4, :cond_6

    .line 556
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$000(Lcom/mediatek/location/agps/apn/AgpsApn;)B

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_6

    const-string v0, "use NetIms"

    .line 557
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 558
    iput-object v4, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 559
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$700(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    return-void

    .line 563
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsSuplApn:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-virtual {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-virtual {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "use NetSupl"

    .line 564
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 565
    iput-object v5, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 566
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$800(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    :cond_7
    return-void
.end method

.method getHostAddress(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 2

    .line 694
    sget-object p0, Lcom/mediatek/location/agps/apn/AgpsApn;->sThreadPoll:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$$ExternalSyntheticLambda0;-><init>(Landroid/net/Network;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v0, 0x5dc

    .line 703
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for fqdn="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/net/InetAddress;

    return-object p0
.end method

.method queryDns()V
    .locals 17

    move-object/from16 v0, p0

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryDns() V2 mIsQueried="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsReleased="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 648
    iget-boolean v1, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x1

    .line 649
    iput-boolean v1, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    .line 654
    iget-object v2, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v2}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$900(Lcom/mediatek/location/agps/apn/AgpsApn;)[B

    move-result-object v2

    .line 655
    iget-object v3, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    iget-object v4, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->getHostAddress(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 657
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v14, v6

    move v15, v14

    move/from16 v16, v15

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 658
    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    .line 659
    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    .line 660
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ia="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bytes="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-static {v8}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " network="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 660
    invoke-static {v7}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 662
    array-length v7, v8

    const/4 v9, 0x4

    if-ne v7, v9, :cond_1

    if-nez v15, :cond_1

    const/4 v7, 0x3

    .line 664
    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v9, 0x2

    .line 665
    aget-byte v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    shl-int/lit8 v7, v7, 0x8

    .line 666
    aget-byte v9, v8, v1

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    shl-int/lit8 v7, v7, 0x8

    .line 667
    aget-byte v8, v8, v5

    and-int/lit16 v8, v8, 0xff

    or-int v16, v7, v8

    move v15, v1

    goto :goto_1

    .line 668
    :cond_1
    array-length v7, v8

    const/16 v9, 0x10

    if-ne v7, v9, :cond_2

    if-nez v14, :cond_2

    move v14, v1

    move-object v2, v8

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v15, :cond_5

    if-eqz v14, :cond_4

    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v1

    .line 674
    :goto_3
    iget-object v4, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v1, v5

    :goto_4
    if-eqz v1, :cond_7

    .line 675
    invoke-virtual {v4}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    goto :goto_5

    :cond_7
    const/4 v4, -0x1

    .line 676
    :goto_5
    iget-object v5, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v5}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$400(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    move-result-object v6

    iget-object v5, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v5}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$300(Lcom/mediatek/location/agps/apn/AgpsApn;)Lcom/mediatek/socket/base/UdpClient;

    move-result-object v7

    move v8, v3

    move v9, v15

    move/from16 v10, v16

    move v11, v14

    move-object v12, v2

    move v13, v1

    move v5, v14

    move v14, v4

    invoke-virtual/range {v6 .. v14}, Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;->DnsQueryResult2(Lcom/mediatek/socket/base/UdpClient;ZZIZ[BZI)Z

    move-result v6

    .line 678
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DnsQueryResult() fqdn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isSuccess="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " hasIpv4="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " ipv4="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " hasIpv6="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ipv6="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hasNetId="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " netId="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ret="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    if-nez v3, :cond_8

    .line 689
    iget-object v1, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-virtual {v1, v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->doReleaseNet(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    :cond_8
    :goto_6
    return-void
.end method

.method declared-synchronized releaseNet()V
    .locals 3

    monitor-enter p0

    .line 711
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseNet() fqdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eSupl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " suplApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsSuplApn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "remove net callback"

    .line 714
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 716
    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 717
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v2, 0x66

    invoke-virtual {v0, v2, p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 720
    iput-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsQueried:Z

    .line 721
    iput-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    .line 722
    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    .line 723
    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 724
    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mFqdn:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method requestNet()V
    .locals 5

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestNet() mIsReleased="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 611
    iget-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 613
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->decideRoute()V

    .line 614
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    if-eqz v1, :cond_1

    .line 615
    new-instance v1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$2;

    invoke-direct {v1, p0}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$2;-><init>(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 631
    monitor-enter p0

    .line 632
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetwork by Req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReq:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 634
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v2, 0x66

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 635
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const-string v0, "No NetReq, run directDns"

    .line 638
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 642
    invoke-virtual {p0}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->queryDns()V

    :cond_2
    return-void
.end method

.method waitNetReady()V
    .locals 4

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitNetReady() mIsEsupl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mEsuplApnMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$000(Lcom/mediatek/location/agps/apn/AgpsApn;)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsSuplApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsSuplApn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasIccCard()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    .line 573
    invoke-virtual {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->hasIccCard()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " !isAirplaneModeOn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    .line 574
    invoke-virtual {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->isAirplaneModeOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 576
    iget-boolean v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mIsEsupl:Z

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$000(Lcom/mediatek/location/agps/apn/AgpsApn;)B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const-string v0, "try to use NetEmergemcy"

    .line 579
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$600(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;

    move-result-object v0

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$000(Lcom/mediatek/location/agps/apn/AgpsApn;)B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    const-string v0, "try to use NetIms"

    .line 582
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$700(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/NetworkRequest;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 588
    new-instance v1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;

    invoke-direct {v1, p0}, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;-><init>(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V

    iput-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 601
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 602
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v1, 0x6f

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_1

    :cond_2
    const-string v0, "No NetReq to wait ready, run requestNet"

    .line 604
    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method
