.class Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$1;
.super Ljava/lang/Object;
.source "LPPeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;


# direct methods
.method constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;)V
    .locals 0

    .line 2089
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 2092
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->access$5000(Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;)Lcom/android/ims/FeatureConnector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/FeatureConnector;->connect()V

    return-void
.end method
