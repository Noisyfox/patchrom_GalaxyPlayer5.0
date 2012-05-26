.class public Lcom/android/settings/bluetooth/SettingsBtStatus;
.super Ljava/lang/Object;
.source "SettingsBtStatus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getConnectionStatusSummary(I)I
    .locals 1
    .parameter "connectionStatus"

    .prologue
    const v0, 0x7f09004b

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f09004e

    goto :goto_0

    :pswitch_2
    const v0, 0x7f09004c

    goto :goto_0

    :pswitch_3
    const v0, 0x7f09004d

    goto :goto_0

    :pswitch_4
    const v0, 0x7f09004f

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static final getPairingStatusSummary(I)I
    .locals 1
    .parameter "bondState"

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f090052

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090051

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090050

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final isConnectionStatusBusy(I)Z
    .locals 1
    .parameter "connectionStatus"

    .prologue
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isConnectionStatusConnected(I)Z
    .locals 2
    .parameter "connectionStatus"

    .prologue
    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
