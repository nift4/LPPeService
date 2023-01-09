.class Lcom/mediatek/location/agps/apn/AgpsApnC2K$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AgpsApnC2K.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/agps/apn/AgpsApnC2K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/location/agps/apn/AgpsApnC2K;


# direct methods
.method constructor <init>(Lcom/mediatek/location/agps/apn/AgpsApnC2K;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    const-string v0, "AgpsApnC2K"

    const-string v1, "onAvailable"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 133
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    const/16 v0, 0x6b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "AgpsApnC2K"

    const-string v1, "onLost"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 140
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    const/16 v0, 0x6b

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 3

    const-string v0, "AgpsApnC2K"

    const-string v1, "onUnavailable"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 147
    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K$2;->this$0:Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    const/16 v0, 0x6b

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method
