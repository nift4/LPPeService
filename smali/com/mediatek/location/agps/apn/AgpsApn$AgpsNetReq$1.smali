.class Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AgpsApn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->waitNetReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;


# direct methods
.method constructor <init>(Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;->this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetReadyCallback onAvailable: network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 592
    iget-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;->this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    monitor-enter p1

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;->this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    iget-object v1, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->removeMessages(ILjava/lang/Object;)V

    .line 594
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;->this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    iget-object v1, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    .line 595
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;->this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    iget-object v0, v0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->access$500(Lcom/mediatek/location/agps/apn/AgpsApn;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;->this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    iget-object v1, v1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 596
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$1;->this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNetReadyCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 597
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
