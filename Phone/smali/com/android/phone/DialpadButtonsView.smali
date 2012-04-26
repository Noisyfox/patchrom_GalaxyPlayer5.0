.class public Lcom/android/phone/DialpadButtonsView;
.super Landroid/widget/RelativeLayout;
.source "DialpadButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mEndButton:Landroid/widget/Button;

.field private mHideButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mSendButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/phone/DialpadButtonsView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DialpadButtonsView;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const v0, 0x7f080054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mSendButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mHideButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mHideButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mEndButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/DialpadButtonsView$1;

    invoke-direct {v1, p0}, Lcom/android/phone/DialpadButtonsView$1;-><init>(Lcom/android/phone/DialpadButtonsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "inCallScreen"

    .prologue
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030013

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Lcom/android/phone/DialpadButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/phone/DialpadButtonsView;->linkControls(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    const-string v1, "EndCallButtonsView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->handleBackButton()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f08007c

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f08007b

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080054
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 6
    .parameter "cm"
    .parameter "orientation"

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    if-eq v2, p2, :cond_0

    iput p2, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    iget v2, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    if-ne v2, v3, :cond_1

    move v1, v3

    .local v1, isPortrait:Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/phone/DialpadButtonsView;->linkControls(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-virtual {v2, v5}, Lcom/android/phone/DialpadButtonsViewLand;->setVisibility(I)V

    .end local v1           #isPortrait:Z
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v3

    .local v0, duringCall:Z
    :goto_2
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mSendButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .end local v0           #duringCall:Z
    :cond_1
    move v1, v4

    goto :goto_0

    .restart local v1       #isPortrait:Z
    :cond_2
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    if-nez v2, :cond_3

    const v2, 0x7f080058

    invoke-virtual {p0, v2}, Lcom/android/phone/DialpadButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/DialpadButtonsViewLand;

    iput-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-virtual {v2}, Lcom/android/phone/DialpadButtonsViewLand;->initialize()V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-direct {p0, v2}, Lcom/android/phone/DialpadButtonsView;->linkControls(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-virtual {v2, v4}, Lcom/android/phone/DialpadButtonsViewLand;->setVisibility(I)V

    goto :goto_1

    .end local v1           #isPortrait:Z
    :cond_4
    move v0, v4

    goto :goto_2

    .restart local v0       #duringCall:Z
    :cond_5
    move v3, v4

    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_4

    :cond_7
    move v3, v4

    goto :goto_5
.end method
