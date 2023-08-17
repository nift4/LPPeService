.class Lcom/mediatek/location/lppe/main/EmergencyCallListener;
.super Landroid/telephony/TelephonyCallback;

# interfaces
.implements Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field final mService:Lcom/mediatek/location/lppe/main/LPPeService;


# direct methods
.method public constructor <init>(Lcom/mediatek/location/lppe/main/LPPeService;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    iput-object p1, p0, Lcom/mediatek/location/lppe/main/EmergencyCallListener;->mService:Lcom/mediatek/location/lppe/main/LPPeService;

    return-void
.end method

# virtual methods
.method public onCallStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/location/lppe/main/EmergencyCallListener;->mService:Lcom/mediatek/location/lppe/main/LPPeService;

    iget-object v0, v0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsReceiver:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;->requestCapabilities(I)V

    return-void
.end method

.method public onOutgoingEmergencyCall(Landroid/telephony/emergency/EmergencyNumber;I)V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/location/lppe/main/EmergencyCallListener;->mService:Lcom/mediatek/location/lppe/main/LPPeService;

    iget-object v0, v0, Lcom/mediatek/location/lppe/main/LPPeService;->mLbsReceiver:Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/location/lppe/lbs/LPPeLbs$LPPeLbsReceiver;->requestCapabilities(I)V

    return-void
.end method
