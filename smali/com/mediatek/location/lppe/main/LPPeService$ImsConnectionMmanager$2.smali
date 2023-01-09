.class Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$2;
.super Ljava/lang/Object;
.source "LPPeService.java"

# interfaces
.implements Lcom/android/ims/FeatureConnector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->connectImsManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ims/FeatureConnector$Listener<",
        "Lcom/android/ims/ImsManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;


# direct methods
.method constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;)V
    .locals 0

    .line 2098
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$2;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic connectionReady(Lcom/android/ims/FeatureUpdates;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2098
    check-cast p1, Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$2;->connectionReady(Lcom/android/ims/ImsManager;)V

    return-void
.end method

.method public connectionReady(Lcom/android/ims/ImsManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 2101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] connectImsManager connectionReady mPhoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$2;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    iget v1, v1, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 2102
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$2;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    iget p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->mPhoneId:I

    invoke-static {v0, p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$5100(Lcom/mediatek/location/lppe/main/LPPeService;ILcom/android/ims/ImsManager;)V

    return-void
.end method

.method public connectionUnavailable(I)V
    .locals 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$2;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    iget-object v0, v0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$5300(Lcom/mediatek/location/lppe/main/LPPeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$2;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->access$5200(Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] connectImsManager connectionUnavailable reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 2111
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$2;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    iget p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->mPhoneId:I

    invoke-static {p1, p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$5400(Lcom/mediatek/location/lppe/main/LPPeService;I)V

    return-void
.end method
