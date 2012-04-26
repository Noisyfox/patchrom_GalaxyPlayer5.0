.class public Lcom/miui/camera/LayoutConfigXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "LayoutConfigXMLHandler.java"


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mIsDeviceMatched:Z

.field private mSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/camera/LayoutSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "context"
    .parameter "displayMetrics"

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/camera/LayoutConfigXMLHandler;->mSizeMap:Ljava/util/HashMap;

    .line 39
    iput-object p1, p0, Lcom/miui/camera/LayoutConfigXMLHandler;->mContext:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/miui/camera/LayoutConfigXMLHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 41
    return-void
.end method


# virtual methods
.method public getLayoutSettingMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/camera/LayoutSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miui/camera/LayoutConfigXMLHandler;->mSizeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 16
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v3, "device"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    const-string v3, "display_height"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 48
    .local v12, height:I
    const-string v3, "display_width"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 49
    .local v15, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/LayoutConfigXMLHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v3, v0

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v12, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/LayoutConfigXMLHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v3, v0

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v15, v3, :cond_1

    .line 50
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/camera/LayoutConfigXMLHandler;->mIsDeviceMatched:Z

    .line 71
    .end local v12           #height:I
    .end local v15           #width:I
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v12       #height:I
    .restart local v15       #width:I
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/camera/LayoutConfigXMLHandler;->mIsDeviceMatched:Z

    goto :goto_0

    .line 54
    .end local v12           #height:I
    .end local v15           #width:I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/camera/LayoutConfigXMLHandler;->mIsDeviceMatched:Z

    move v3, v0

    if-eqz v3, :cond_0

    const-string v3, "size"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const-string v3, "ratio"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 56
    .local v13, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/LayoutConfigXMLHandler;->mContext:Landroid/app/Activity;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 57
    .local v14, res:Landroid/content/res/Resources;
    new-instance v2, Lcom/miui/camera/LayoutSetting;

    const-string v3, "bottom_bar_height"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/LayoutConfigXMLHandler;->mContext:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":drawable/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom_bar_background"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v14, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v5, "bottom_bar_transparent"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "top_bar_height"

    move-object/from16 v0, p4

    move-object v1, v6

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/LayoutConfigXMLHandler;->mContext:Landroid/app/Activity;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":drawable/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "top_bar_background"

    move-object/from16 v0, p4

    move-object v1, v8

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v14, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v8, "top_bar_transparent"

    move-object/from16 v0, p4

    move-object v1, v8

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const-string v9, "preview_width"

    move-object/from16 v0, p4

    move-object v1, v9

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "preview_height"

    move-object/from16 v0, p4

    move-object v1, v10

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "preview_bottom_margin"

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct/range {v2 .. v11}, Lcom/miui/camera/LayoutSetting;-><init>(IIZIIZIII)V

    .line 69
    .local v2, setting:Lcom/miui/camera/LayoutSetting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/LayoutConfigXMLHandler;->mSizeMap:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
