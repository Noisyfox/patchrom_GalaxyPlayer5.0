.class Lcom/android/phone/InCallQuickPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "InCallQuickPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallQuickPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallQuickPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallQuickPanel;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/phone/InCallQuickPanel$1;->this$0:Lcom/android/phone/InCallQuickPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v6, "InCallQuickPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "com.android.phone.showscreen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/InCallQuickPanel$1;->this$0:Lcom/android/phone/InCallQuickPanel;

    #getter for: Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/InCallQuickPanel;->access$000(Lcom/android/phone/InCallQuickPanel;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->createInVTCallIntent()Landroid/content/Intent;

    move-result-object v5

    .local v5, showScreenIntent:Landroid/content/Intent;
    :goto_0
    iget-object v6, p0, Lcom/android/phone/InCallQuickPanel$1;->this$0:Lcom/android/phone/InCallQuickPanel;

    #getter for: Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;
    invoke-static {v6}, Lcom/android/phone/InCallQuickPanel;->access$100(Lcom/android/phone/InCallQuickPanel;)Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .end local v5           #showScreenIntent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v5

    .restart local v5       #showScreenIntent:Landroid/content/Intent;
    goto :goto_0

    .end local v5           #showScreenIntent:Landroid/content/Intent;
    :cond_2
    const-string v6, "com.android.phone.mute"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v9

    :goto_2
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_1

    :cond_3
    move v6, v10

    goto :goto_2

    :cond_4
    const-string v6, "com.android.phone.speaker"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/InCallQuickPanel$1;->this$0:Lcom/android/phone/InCallQuickPanel;

    #getter for: Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;
    invoke-static {v6}, Lcom/android/phone/InCallQuickPanel;->access$100(Lcom/android/phone/InCallQuickPanel;)Lcom/android/phone/PhoneApp;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    .local v3, isSpeakerOn:Z
    iget-object v6, p0, Lcom/android/phone/InCallQuickPanel$1;->this$0:Lcom/android/phone/InCallQuickPanel;

    #getter for: Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;
    invoke-static {v6}, Lcom/android/phone/InCallQuickPanel;->access$100(Lcom/android/phone/InCallQuickPanel;)Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    .local v2, bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v6

    if-ne v6, v9, :cond_5

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    :cond_5
    iget-object v6, p0, Lcom/android/phone/InCallQuickPanel$1;->this$0:Lcom/android/phone/InCallQuickPanel;

    #getter for: Lcom/android/phone/InCallQuickPanel;->mPhoneApp:Lcom/android/phone/PhoneApp;
    invoke-static {v6}, Lcom/android/phone/InCallQuickPanel;->access$100(Lcom/android/phone/InCallQuickPanel;)Lcom/android/phone/PhoneApp;

    move-result-object v6

    if-nez v3, :cond_6

    move v7, v9

    :goto_3
    invoke-static {v6, v7, v9}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    :cond_6
    move v7, v10

    goto :goto_3

    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #bluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    .end local v3           #isSpeakerOn:Z
    :cond_7
    const-string v6, "com.android.phone.unhold"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/InCallQuickPanel$1;->this$0:Lcom/android/phone/InCallQuickPanel;

    #getter for: Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/InCallQuickPanel;->access$000(Lcom/android/phone/InCallQuickPanel;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    :cond_8
    const-string v6, "com.android.phone.end"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/InCallQuickPanel$1;->this$0:Lcom/android/phone/InCallQuickPanel;

    #getter for: Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/InCallQuickPanel;->access$000(Lcom/android/phone/InCallQuickPanel;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_9

    iget-object v6, p0, Lcom/android/phone/InCallQuickPanel$1;->this$0:Lcom/android/phone/InCallQuickPanel;

    #getter for: Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/InCallQuickPanel;->access$000(Lcom/android/phone/InCallQuickPanel;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_1

    :cond_9
    if-eq v4, v9, :cond_a

    const/4 v6, 0x3

    if-ne v4, v6, :cond_b

    :cond_a
    iget-object v6, p0, Lcom/android/phone/InCallQuickPanel$1;->this$0:Lcom/android/phone/InCallQuickPanel;

    #getter for: Lcom/android/phone/InCallQuickPanel;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/InCallQuickPanel;->access$000(Lcom/android/phone/InCallQuickPanel;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_1

    :cond_b
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
