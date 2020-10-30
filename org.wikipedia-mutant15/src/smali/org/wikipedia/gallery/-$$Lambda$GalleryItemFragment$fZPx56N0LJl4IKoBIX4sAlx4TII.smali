.class public final synthetic Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$fZPx56N0LJl4IKoBIX4sAlx4TII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/gallery/GalleryItemFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryItemFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$fZPx56N0LJl4IKoBIX4sAlx4TII;->f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryItemFragment$fZPx56N0LJl4IKoBIX4sAlx4TII;->f$0:Lorg/wikipedia/gallery/GalleryItemFragment;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/gallery/GalleryItemFragment;->lambda$loadMedia$4$GalleryItemFragment(Ljava/lang/Throwable;)V

    return-void
.end method
