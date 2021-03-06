.class public Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
.super Lcom/broadcom/bt/util/bmsg/BMessageBase;
.source "BMessageVCardProperty.java"


# instance fields
.field private mParent:Lcom/broadcom/bt/util/bmsg/BMessageVCard;

.field private mPreviousProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/util/bmsg/BMessageVCard;I)V
    .locals 0
    .parameter "parent"
    .parameter "nativeRef"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/util/bmsg/BMessageBase;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->mParent:Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->setNativeRef(I)Z

    return-void
.end method

.method private constructor <init>(Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;I)V
    .locals 1
    .parameter "previousProp"
    .parameter "nativeRef"

    .prologue
    iget-object v0, p1, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->mParent:Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    invoke-direct {p0, v0, p2}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageVCard;I)V

    iput-object p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->mPreviousProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    return-void
.end method


# virtual methods
.method public getNextProperty()Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->isNativeCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v1}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBvCardPropNext(I)I

    move-result v0

    .local v0, nativePropObj:I
    if-lez v0, :cond_0

    new-instance v1, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;-><init>(Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;I)V

    .end local v0           #nativePropObj:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBvCardPropParam(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->isNativeCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessageManager;->getBvCardPropVal(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
