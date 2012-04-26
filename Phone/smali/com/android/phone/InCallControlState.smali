.class public Lcom/android/phone/InCallControlState;
.super Ljava/lang/Object;
.source "InCallControlState.java"


# instance fields
.field public bluetoothEnabled:Z

.field public bluetoothIndicatorOn:Z

.field public canAddCall:Z

.field public canHold:Z

.field public canMerge:Z

.field public canMute:Z

.field public canRejectWithMsg:Z

.field public canSwap:Z

.field public canTransfer:Z

.field public dialpadEnabled:Z

.field public dialpadVisible:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field public manageConferenceEnabled:Z

.field public manageConferenceVisible:Z

.field public muteIndicatorOn:Z

.field public onHold:Z

.field public speakerEnabled:Z

.field public speakerOn:Z

.field public supportsHold:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "inCallScreen"
    .parameter "cm"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    return-void
.end method


# virtual methods
.method public update()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_4

    move v5, v13

    .local v5, hasRingingCall:Z
    :goto_0
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .local v2, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v10, :cond_5

    move v3, v13

    .local v3, hasActiveForegroundCall:Z
    :goto_1
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v4

    .local v4, hasHoldingCall:Z
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/TelephonyCapabilities;->supportsConferenceCallManagement(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    iget-boolean v10, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isManageConferenceMode()Z

    move-result v10

    if-nez v10, :cond_6

    move v10, v13

    :goto_2
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    :goto_3
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .local v0, c:Lcom/android/internal/telephony/Connection;
    iget-boolean v10, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    move v11, v13

    :goto_4
    and-int/2addr v10, v11

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canSwap:Z

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canTransfer:Z

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v10

    if-eqz v10, :cond_9

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    :goto_5
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    const/4 v6, 0x0

    .local v6, isEmergencyCall:Z
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_a

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    :goto_6
    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/TelephonyCapabilities;->supportsHoldAndUnhold(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-eqz v10, :cond_e

    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v4, :cond_b

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v10, :cond_b

    move v10, v13

    :goto_7
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v3, :cond_c

    if-nez v4, :cond_c

    move v7, v13

    .local v7, okToHold:Z
    :goto_8
    iget-boolean v8, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    .local v8, okToUnhold:Z
    if-nez v7, :cond_2

    if-eqz v8, :cond_d

    :cond_2
    move v10, v13

    :goto_9
    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    .end local v7           #okToHold:Z
    .end local v8           #okToUnhold:Z
    :goto_a
    if-eqz v5, :cond_10

    iget-object v10, p0, Lcom/android/phone/InCallControlState;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v9

    .local v9, presentation:I
    sget v10, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v9, v10, :cond_3

    sget v10, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v9, v10, :cond_f

    :cond_3
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    .end local v9           #presentation:I
    :goto_b
    return-void

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v3           #hasActiveForegroundCall:Z
    .end local v4           #hasHoldingCall:Z
    .end local v5           #hasRingingCall:Z
    .end local v6           #isEmergencyCall:Z
    :cond_4
    move v5, v12

    goto/16 :goto_0

    .restart local v1       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v2       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v5       #hasRingingCall:Z
    :cond_5
    move v3, v12

    goto/16 :goto_1

    .restart local v3       #hasActiveForegroundCall:Z
    .restart local v4       #hasHoldingCall:Z
    :cond_6
    move v10, v12

    goto/16 :goto_2

    :cond_7
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    goto/16 :goto_3

    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    :cond_8
    move v11, v12

    goto/16 :goto_4

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_9
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    goto/16 :goto_5

    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    .restart local v6       #isEmergencyCall:Z
    :cond_a
    iput-boolean v3, p0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    goto :goto_6

    :cond_b
    move v10, v12

    goto :goto_7

    :cond_c
    move v7, v12

    goto :goto_8

    .restart local v7       #okToHold:Z
    .restart local v8       #okToUnhold:Z
    :cond_d
    move v10, v12

    goto :goto_9

    .end local v7           #okToHold:Z
    .end local v8           #okToUnhold:Z
    :cond_e
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->onHold:Z

    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canHold:Z

    goto :goto_a

    .restart local v9       #presentation:I
    :cond_f
    iput-boolean v13, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    goto :goto_b

    .end local v9           #presentation:I
    :cond_10
    iput-boolean v12, p0, Lcom/android/phone/InCallControlState;->canRejectWithMsg:Z

    goto :goto_b
.end method
