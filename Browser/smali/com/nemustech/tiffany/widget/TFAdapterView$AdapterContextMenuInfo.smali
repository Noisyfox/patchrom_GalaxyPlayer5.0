.class public Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "TFAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .parameter "targetView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 395
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;->position:I

    .line 396
    iput-wide p3, p0, Lcom/nemustech/tiffany/widget/TFAdapterView$AdapterContextMenuInfo;->id:J

    .line 397
    return-void
.end method
