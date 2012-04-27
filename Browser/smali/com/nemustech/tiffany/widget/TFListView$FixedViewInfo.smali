.class public Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;
.super Ljava/lang/Object;
.source "TFListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFListView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFListView;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFListView$FixedViewInfo;->this$0:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
