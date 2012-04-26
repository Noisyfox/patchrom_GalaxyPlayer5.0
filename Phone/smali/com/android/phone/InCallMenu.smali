.class Lcom/android/phone/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# instance fields
.field mAddCall:Lcom/android/phone/InCallMenuItemView;

.field mAnswer:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

.field mBluetooth:Lcom/android/phone/InCallMenuItemView;

.field mEndCall:Lcom/android/phone/InCallMenuItemView;

.field mHold:Lcom/android/phone/InCallMenuItemView;

.field mIgnore:Lcom/android/phone/InCallMenuItemView;

.field private mInCallMenuView:Lcom/android/phone/InCallMenuView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field mManageConference:Lcom/android/phone/InCallMenuItemView;

.field mMergeCalls:Lcom/android/phone/InCallMenuItemView;

.field mMute:Lcom/android/phone/InCallMenuItemView;

.field mShowDialpad:Lcom/android/phone/InCallMenuItemView;

.field mSpeaker:Lcom/android/phone/InCallMenuItemView;

.field mSwapCalls:Lcom/android/phone/InCallMenuItemView;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-void
.end method


# virtual methods
.method clearInCallScreenReference()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenuView;->clearInCallScreenReference()V

    :cond_0
    return-void
.end method

.method getView()Lcom/android/phone/InCallMenuView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    return-object v0
.end method

.method initMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x10300a6

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v2, wrappedContext:Landroid/content/Context;
    new-instance v3, Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v3, v2, v4}, Lcom/android/phone/InCallMenuView;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0038

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x10801c0

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0039

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f02013a

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0034

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f02013c

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0037

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x1080033

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0035

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f020145

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000e

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0036

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f02013d

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0031

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0030

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0032

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080012

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0033

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d003b

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080014

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0040

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0041

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .local v1, phoneType:I
    if-eq v1, v5, :cond_0

    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v7}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v7}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    if-ne v1, v6, :cond_2

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    :cond_2
    if-eq v1, v5, :cond_3

    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    :cond_4
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v3}, Lcom/android/phone/InCallMenuView;->dumpState()V

    return-void
.end method

.method updateItems(Lcom/android/internal/telephony/CallManager;)Z
    .locals 14
    .parameter "cm"

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .local v4, hasRingingCall:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .local v2, hasActiveCall:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .local v3, hasHoldingCall:Z
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    .local v6, inConferenceCall:Z
    if-nez v6, :cond_1

    const/4 v11, 0x1

    move v9, v11

    .local v9, showShowDialpad:Z
    :goto_1
    if-eqz v9, :cond_2

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    move v0, v11

    .local v0, enableShowDialpad:Z
    :goto_2
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v9}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v7

    .local v7, isDtmfDialerOpened:Z
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    if-eqz v7, :cond_3

    const v12, 0x7f0d003a

    :goto_3
    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v10

    .local v10, speakerOn:Z
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v10}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v11}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    const/4 v11, 0x1

    goto/16 :goto_0

    .end local v0           #enableShowDialpad:Z
    .end local v7           #isDtmfDialerOpened:Z
    .end local v9           #showShowDialpad:Z
    .end local v10           #speakerOn:Z
    :cond_1
    const/4 v11, 0x0

    move v9, v11

    goto :goto_1

    .restart local v9       #showShowDialpad:Z
    :cond_2
    const/4 v11, 0x0

    move v0, v11

    goto :goto_2

    .restart local v0       #enableShowDialpad:Z
    .restart local v7       #isDtmfDialerOpened:Z
    :cond_3
    const v12, 0x7f0d0039

    goto :goto_3

    .end local v0           #enableShowDialpad:Z
    .end local v6           #inConferenceCall:Z
    .end local v7           #isDtmfDialerOpened:Z
    .end local v9           #showShowDialpad:Z
    :cond_4
    if-eqz v4, :cond_9

    if-eqz v2, :cond_8

    if-nez v3, :cond_8

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .local v8, phoneType:I
    const/4 v11, 0x2

    if-ne v8, v11, :cond_5

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    :goto_4
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v11}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x1

    if-eq v8, v11, :cond_6

    const/4 v11, 0x3

    if-ne v8, v11, :cond_7

    :cond_6
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto :goto_4

    :cond_7
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v8           #phoneType:I
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_9
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    .local v5, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-nez v11, :cond_a

    const/4 v11, 0x1

    move v9, v11

    .restart local v9       #showShowDialpad:Z
    :goto_5
    if-eqz v9, :cond_b

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    move v0, v11

    .restart local v0       #enableShowDialpad:Z
    :goto_6
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v9}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v12, :cond_c

    const v12, 0x7f0d003a

    :goto_7
    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->supportsHold:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v11}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    const/4 v11, 0x1

    goto/16 :goto_0

    .end local v0           #enableShowDialpad:Z
    .end local v9           #showShowDialpad:Z
    :cond_a
    const/4 v11, 0x0

    move v9, v11

    goto/16 :goto_5

    .restart local v9       #showShowDialpad:Z
    :cond_b
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_6

    .restart local v0       #enableShowDialpad:Z
    :cond_c
    const v12, 0x7f0d0039

    goto/16 :goto_7
.end method
