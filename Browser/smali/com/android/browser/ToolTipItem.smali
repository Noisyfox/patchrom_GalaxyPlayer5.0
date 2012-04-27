.class Lcom/android/browser/ToolTipItem;
.super Ljava/lang/Object;
.source "ToolTip.java"


# instance fields
.field bounds:Landroid/graphics/Rect;

.field mstrText:Ljava/lang/String;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "ToolTip"

    invoke-direct {p0, v0}, Lcom/android/browser/ToolTipItem;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "strText"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/ToolTipItem;->type:I

    .line 75
    iput-object p1, p0, Lcom/android/browser/ToolTipItem;->mstrText:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ToolTipItem;->bounds:Landroid/graphics/Rect;

    .line 77
    return-void
.end method


# virtual methods
.method public onItemSelected()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
