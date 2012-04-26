.class public Lcom/miui/camera/BaseCamera;
.super Lcom/miui/camera/NoSearchActivity;
.source "BaseCamera.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mToastTextView:Landroid/widget/TextView;

.field protected mToastView:Landroid/view/ViewGroup;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/miui/camera/BaseCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/camera/BaseCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/camera/NoSearchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected acquireWakeLock()V
    .locals 4

    .prologue
    .line 69
    iget-object v2, p0, Lcom/miui/camera/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 71
    :try_start_0
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/miui/camera/BaseCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 72
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/miui/camera/BaseCamera;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/camera/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 73
    iget-object v2, p0, Lcom/miui/camera/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 75
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/miui/camera/BaseCamera;->TAG:Ljava/lang/String;

    const-string v3, "Unable to acquire wakelock, ignoring exception and proceeding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/camera/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method protected clearWakeLock()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/miui/camera/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/miui/camera/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/miui/camera/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/camera/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    :cond_1
    return-void

    .line 87
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/miui/camera/BaseCamera;->TAG:Ljava/lang/String;

    const-string v2, "Caught exception while releasing the wakelock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected drawColorEffectIcon(Lcom/miui/camera/Global;I)V
    .locals 11
    .parameter "global"
    .parameter "coloreffect"

    .prologue
    const/4 v10, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    .local v5, isSupportedEffect:Z
    iget-object v9, p1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v6

    .line 99
    .local v6, supportedEffects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-lez p2, :cond_0

    .line 100
    const v9, 0x7f070007

    invoke-virtual {p1, v9, p2}, Lcom/miui/camera/Global;->getString(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/miui/camera/Global;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 101
    const/4 v5, 0x1

    .line 110
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    move v4, v9

    .line 112
    .local v4, isEnabled:Z
    :goto_0
    if-eqz v4, :cond_2

    .line 113
    const v8, 0x7f080007

    .line 114
    .local v8, textColorId:I
    const/16 v1, 0xff

    .line 120
    .local v1, drawableAlpha:I
    :goto_1
    if-eqz v5, :cond_3

    .line 121
    const v3, 0x7f020057

    .line 122
    .local v3, drawableTopId:I
    const v9, 0x7f070006

    invoke-virtual {p1, v9, p2}, Lcom/miui/camera/Global;->getString(II)Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, text:Ljava/lang/String;
    :goto_2
    const v9, 0x7f0d001f

    invoke-virtual {p0, v9}, Lcom/miui/camera/BaseCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    .local v0, colorEffectIcon:Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 131
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/miui/camera/BaseCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    invoke-virtual {p0}, Lcom/miui/camera/BaseCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 134
    .local v2, drawableTop:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 135
    invoke-virtual {v0, v10, v2, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 136
    return-void

    .line 110
    .end local v0           #colorEffectIcon:Landroid/widget/TextView;
    .end local v1           #drawableAlpha:I
    .end local v2           #drawableTop:Landroid/graphics/drawable/Drawable;
    .end local v3           #drawableTopId:I
    .end local v4           #isEnabled:Z
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #textColorId:I
    :cond_1
    const/4 v9, 0x0

    move v4, v9

    goto :goto_0

    .line 116
    .restart local v4       #isEnabled:Z
    :cond_2
    const v8, 0x7f080008

    .line 117
    .restart local v8       #textColorId:I
    const/16 v1, 0x66

    .restart local v1       #drawableAlpha:I
    goto :goto_1

    .line 124
    :cond_3
    const v3, 0x7f020056

    .line 125
    .restart local v3       #drawableTopId:I
    const v9, 0x7f0b001f

    invoke-virtual {p0, v9}, Lcom/miui/camera/BaseCamera;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #text:Ljava/lang/String;
    goto :goto_2
.end method

.method protected showStorageHint()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/miui/camera/StorageHelper;->getStorageState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/camera/BaseCamera;->showStorageHint(I)V

    .line 27
    return-void
.end method

.method protected showStorageHint(I)V
    .locals 4
    .parameter "storageState"

    .prologue
    .line 30
    sget-object v2, Lcom/miui/camera/BaseCamera;->TAG:Ljava/lang/String;

    const-string v3, "showStorageHint"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v2, p0, Lcom/miui/camera/BaseCamera;->mToastView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/camera/BaseCamera;->mToastTextView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    .local v0, hintText:I
    packed-switch p1, :pswitch_data_0

    .line 59
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_3

    .line 60
    iget-object v2, p0, Lcom/miui/camera/BaseCamera;->mToastTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object v2, p0, Lcom/miui/camera/BaseCamera;->mToastView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 36
    :pswitch_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, state:Ljava/lang/String;
    const-string v2, "checking"

    if-ne v1, v2, :cond_2

    .line 38
    const v0, 0x7f0b0008

    goto :goto_1

    .line 40
    :cond_2
    const v0, 0x1040016

    .line 42
    goto :goto_1

    .line 44
    .end local v1           #state:Ljava/lang/String;
    :pswitch_2
    const v0, 0x1040019

    .line 45
    goto :goto_1

    .line 47
    :pswitch_3
    const v0, 0x1040017

    .line 48
    goto :goto_1

    .line 50
    :pswitch_4
    const v0, 0x1040018

    .line 51
    goto :goto_1

    .line 53
    :pswitch_5
    const v0, 0x7f0b0007

    .line 54
    goto :goto_1

    .line 63
    :cond_3
    iget-object v2, p0, Lcom/miui/camera/BaseCamera;->mToastView:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
