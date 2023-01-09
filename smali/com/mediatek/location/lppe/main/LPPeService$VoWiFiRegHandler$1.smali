.class Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;
.super Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
.source "LPPeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;)V
    .locals 0

    .line 1982
    iput-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(I)V
    .locals 2

    .line 1986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] onImsConnected imsRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget v1, v1, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 1987
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget-object v0, v0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4300(Lcom/mediatek/location/lppe/main/LPPeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1988
    :try_start_0
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsIsRegistered:Z

    .line 1989
    iput p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsRadioTech:I

    .line 1990
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->access$4400(Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;)V

    .line 1991
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onRegistering(I)V
    .locals 2

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] onImsProgressing imsRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget v1, v1, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 1999
    iget-object v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget-object v0, v0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {v0}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4300(Lcom/mediatek/location/lppe/main/LPPeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2000
    :try_start_0
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsIsRegistered:Z

    .line 2001
    iput p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsRadioTech:I

    .line 2002
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 2007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lbs][ims] onImsDisconnected imsReasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " phoneId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget p1, p1, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mPhoneId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$2900(Ljava/lang/Object;)V

    .line 2008
    iget-object p1, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    iget-object p1, p1, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->this$0:Lcom/mediatek/location/lppe/main/LPPeService;

    invoke-static {p1}, Lcom/mediatek/location/lppe/main/LPPeService;->access$4300(Lcom/mediatek/location/lppe/main/LPPeService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2009
    :try_start_0
    iget-object p0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler$1;->this$1:Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsIsRegistered:Z

    const/4 v0, -0x1

    .line 2010
    iput v0, p0, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->mImsRadioTech:I

    .line 2011
    invoke-static {p0}, Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;->access$4400(Lcom/mediatek/location/lppe/main/LPPeService$VoWiFiRegHandler;)V

    .line 2012
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
