.class final Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$5;
.super Ljava/lang/Object;
.source "ImagePreviewDialog.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/ImagePreviewDialog;->loadImageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/ImagePreviewDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/ImagePreviewDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$5;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$5;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .locals 1

    .line 124
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 125
    iget-object v0, p0, Lorg/wikipedia/views/ImagePreviewDialog$loadImageInfo$5;->this$0:Lorg/wikipedia/views/ImagePreviewDialog;

    invoke-static {v0, p1}, Lorg/wikipedia/views/ImagePreviewDialog;->access$showError(Lorg/wikipedia/views/ImagePreviewDialog;Ljava/lang/Throwable;)V

    return-void
.end method
