.class Lcom/mediatek/location/agps/apn/AgpsApnC2K$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 113
    iput-object p1, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive broadcast intent, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgpsApnC2K"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "state"

    .line 120
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_AIRPLANE_MODE_CHANGED enabled ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p2, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    invoke-static {p2}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->access$100(Lcom/mediatek/location/agps/apn/AgpsApnC2K;)Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;

    move-result-object p2

    iget-object p0, p0, Lcom/mediatek/location/agps/apn/AgpsApnC2K$1;->this$0:Lcom/mediatek/location/agps/apn/AgpsApnC2K;

    invoke-static {p0}, Lcom/mediatek/location/agps/apn/AgpsApnC2K;->access$000(Lcom/mediatek/location/agps/apn/AgpsApnC2K;)Lcom/mediatek/socket/base/UdpClient;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/mediatek/location/agps/apn/Framework2AgpsInterface$Framework2AgpsInterfaceSender;->AirplaneModeChanged(Lcom/mediatek/socket/base/UdpClient;Z)Z

    :cond_0
    return-void
.end method
