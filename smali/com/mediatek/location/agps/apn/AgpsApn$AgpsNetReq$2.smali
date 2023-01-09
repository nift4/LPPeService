.class Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AgpsApn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->requestNet()V
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

    .line 615
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$2;->this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkCallback onAvailable: network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$2;->this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$2;->this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    iput-object p1, v1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->mNet:Landroid/net/Network;

    .line 621
    iget-object p1, v1, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v2, 0x66

    invoke-virtual {p1, v2, v1}, Lcom/mediatek/location/agps/apn/AgpsApn;->removeMessages(ILjava/lang/Object;)V

    .line 622
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq$2;->this$1:Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;

    iget-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApn$AgpsNetReq;->this$0:Lcom/mediatek/location/agps/apn/AgpsApn;

    const/16 v1, 0x65

    invoke-virtual {p1, v1, p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->sendMessage(ILjava/lang/Object;)V

    .line 623
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 628
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NetworkCallback onLost: network="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/agps/apn/AgpsApn;->log(Ljava/lang/String;)V

    return-void
.end method
