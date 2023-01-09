.class final Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;
.super Ljava/lang/Object;
.source "LPPeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/lppe/main/LPPeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VoWiFiRegHandler"
.end annotation


# instance fields
.field public mImsIsRegistered:Z

.field public mImsManager:Lcom/android/ims/ImsManager;

.field public mImsRadioTech:I

.field public mPhoneId:I

.field private mRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field final synthetic this$0:Lcom/mediatek/location/lppe/main/LPPeService;


# direct methods
.method private constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    .line 1950
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1981
    new-instance p1, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;

    invoke-direct {p1, p0}, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;-><init>(Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;)V

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService;Lcom/mediatek/location/lppe/main/LPPeService$1;)V
    .locals 0

    .line 1950
    invoke-direct {p0, p1}, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;-><init>(Lcom/mediatek/location/lppe/main/LPPeService;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;)V
    .locals 0

    .line 1950
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->handleImsCapabilityChange()V

    return-void
.end method

.method static synthetic access$4900(Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;)V
    .locals 0

    .line 1950
    invoke-direct {p0}, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->unRegisterForImsStateChange()V

    return-void
.end method

.method private handleImsCapabilityChange()V
    .locals 3

    .line 2017
    iget-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsIsRegistered:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsRadioTech:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2019
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    iget v2, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    shl-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4576(Lcom/mediatek/location/lppe/main/LPPeService;I)I

    goto :goto_0

    .line 2021
    :cond_0
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    iget v2, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    shl-int/2addr v1, v2

    not-int v1, v1

    invoke-static {v0, v1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4572(Lcom/mediatek/location/lppe/main/LPPeService;I)I

    .line 2024
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] updateVowifiRegistration() phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mImsIsRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsIsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mImsRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mVoWifiRegStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    .line 2027
    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4500(Lcom/mediatek/location/lppe/main/LPPeService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2024
    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 2029
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4700(Lcom/mediatek/location/lppe/main/LPPeService;)Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4600(Lcom/mediatek/location/lppe/main/LPPeService;)Lcom/mediatek/socket/base/UdpClient;

    move-result-object v1

    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4500(Lcom/mediatek/location/lppe/main/LPPeService;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsSender;->updateVowifiRegistration(Lcom/mediatek/socket/base/UdpClient;I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "[lbs][ims] mLbsSender.updateVowifiRegistration() failed"

    .line 2030
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2000(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private unRegisterForImsStateChange()V
    .locals 2

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] unRegisterForImsStateChange() phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 1976
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 1977
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-virtual {v0, p0}, Lcom/android/ims/ImsManager;->removeRegistrationListener(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public registerForImsStateChange()V
    .locals 4

    .line 1957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] registerForImsStateChange() phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1960
    :try_start_0
    iget-boolean v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsIsRegistered:Z

    if-nez v1, :cond_0

    .line 1961
    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    iget-object v3, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    .line 1962
    invoke-static {v3}, Lcom/mediatek/location/lppe/main/LPPeService;->access$3900(Lcom/mediatek/location/lppe/main/LPPeService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 1961
    invoke-virtual {v1, v2, v3}, Lcom/android/ims/ImsManager;->addRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1966
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[lbs][ims] addRegistrationCallback fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LPPeService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1970
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    iget-object v0, v0, Lcom/mediatek/location/lppe/main/LPPeService;->mVoWiFiRegHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
