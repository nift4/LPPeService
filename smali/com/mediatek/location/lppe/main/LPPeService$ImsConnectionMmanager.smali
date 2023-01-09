.class final Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;
.super Ljava/lang/Object;
.source "LPPeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/lppe/main/LPPeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsConnectionMmanager"
.end annotation


# instance fields
.field private mImsConnectorRunnable:Ljava/lang/Runnable;

.field private mImsManagerConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field public mPhoneId:I

.field final synthetic this$0:Lcom/mediatek/location/lppe/main/LPPeService;


# direct methods
.method private constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 2084
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2089
    new-instance p1, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$1;

    invoke-direct {p1, p0}, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$1;-><init>(Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;)V

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->mImsConnectorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService;Lcom/mediatek/location/lppe/main/LPPeService$1;)V
    .locals 0

    .line 2084
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;)Lcom/android/ims/FeatureConnector;
    .locals 0

    .line 2084
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;)Ljava/lang/Runnable;
    .locals 0

    .line 2084
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->mImsConnectorRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public connectImsManager()V
    .locals 5

    .line 2097
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3900(Lcom/mediatek/location/lppe/main/LPPeService;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->mPhoneId:I

    new-instance v2, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$2;

    invoke-direct {v2, p0}, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager$2;-><init>(Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;)V

    iget-object v3, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    .line 2113
    invoke-static {v3}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3900(Lcom/mediatek/location/lppe/main/LPPeService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    const-string v4, "LPPeService"

    .line 2097
    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/ims/ImsManager;->getConnector(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->mImsManagerConnector:Lcom/android/ims/FeatureConnector;

    if-eqz v0, :cond_0

    .line 2115
    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->connect()V

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] mImsManagerConnector.connect() mPhoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$ImsConnectionMmanager;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
