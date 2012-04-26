.class Lcom/miui/camera/ThumbnailController$1;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/ThumbnailController;->updateThumb(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/miui/camera/ThumbnailController;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 73
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/miui/camera/ThumbnailController;->access$000(Lcom/miui/camera/ThumbnailController;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/miui/camera/ThumbnailController;->access$100(Lcom/miui/camera/ThumbnailController;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/miui/camera/ThumbnailController;->access$200(Lcom/miui/camera/ThumbnailController;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    #setter for: Lcom/miui/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/miui/camera/ThumbnailController;->access$202(Lcom/miui/camera/ThumbnailController;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/miui/camera/ThumbnailController;->access$200(Lcom/miui/camera/ThumbnailController;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/miui/camera/ThumbnailController;->access$300(Lcom/miui/camera/ThumbnailController;)Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/miui/camera/ThumbnailController;->access$400(Lcom/miui/camera/ThumbnailController;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v5

    .line 82
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/miui/camera/ThumbnailController;->access$200(Lcom/miui/camera/ThumbnailController;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v0, v1, v5

    .line 83
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #setter for: Lcom/miui/camera/ThumbnailController;->mShouldAnimateThumb:Z
    invoke-static {v1, v6}, Lcom/miui/camera/ThumbnailController;->access$502(Lcom/miui/camera/ThumbnailController;Z)Z

    .line 91
    :goto_1
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/miui/camera/ThumbnailController;->access$100(Lcom/miui/camera/ThumbnailController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mShouldAnimateThumb:Z
    invoke-static {v1}, Lcom/miui/camera/ThumbnailController;->access$500(Lcom/miui/camera/ThumbnailController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;
    invoke-static {v1}, Lcom/miui/camera/ThumbnailController;->access$600(Lcom/miui/camera/ThumbnailController;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 95
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #setter for: Lcom/miui/camera/ThumbnailController;->mShouldAnimateThumb:Z
    invoke-static {v1, v6}, Lcom/miui/camera/ThumbnailController;->access$502(Lcom/miui/camera/ThumbnailController;Z)Z

    goto :goto_0

    .line 85
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/miui/camera/ThumbnailController;->access$200(Lcom/miui/camera/ThumbnailController;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/miui/camera/ThumbnailController;->access$200(Lcom/miui/camera/ThumbnailController;)[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v5

    aput-object v2, v1, v6

    .line 86
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/miui/camera/ThumbnailController;->access$200(Lcom/miui/camera/ThumbnailController;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/miui/camera/ThumbnailController;->access$300(Lcom/miui/camera/ThumbnailController;)Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/miui/camera/ThumbnailController;->access$400(Lcom/miui/camera/ThumbnailController;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v5

    .line 87
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v3, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/miui/camera/ThumbnailController;->access$200(Lcom/miui/camera/ThumbnailController;)[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #setter for: Lcom/miui/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;
    invoke-static {v1, v2}, Lcom/miui/camera/ThumbnailController;->access$602(Lcom/miui/camera/ThumbnailController;Landroid/graphics/drawable/TransitionDrawable;)Landroid/graphics/drawable/TransitionDrawable;

    .line 88
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #getter for: Lcom/miui/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;
    invoke-static {v1}, Lcom/miui/camera/ThumbnailController;->access$600(Lcom/miui/camera/ThumbnailController;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    .line 89
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/miui/camera/ThumbnailController$1;->this$0:Lcom/miui/camera/ThumbnailController;

    #setter for: Lcom/miui/camera/ThumbnailController;->mShouldAnimateThumb:Z
    invoke-static {v1, v5}, Lcom/miui/camera/ThumbnailController;->access$502(Lcom/miui/camera/ThumbnailController;Z)Z

    goto :goto_1
.end method
