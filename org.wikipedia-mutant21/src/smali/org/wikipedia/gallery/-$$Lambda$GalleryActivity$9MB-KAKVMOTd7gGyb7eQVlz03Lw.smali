.class public final synthetic Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$9MB-KAKVMOTd7gGyb7eQVlz03Lw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/gallery/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$9MB-KAKVMOTd7gGyb7eQVlz03Lw;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$9MB-KAKVMOTd7gGyb7eQVlz03Lw;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    check-cast p1, Lorg/wikipedia/gallery/MediaList;

    invoke-virtual {v0, p1}, Lorg/wikipedia/gallery/GalleryActivity;->lambda$fetchGalleryItems$7$GalleryActivity(Lorg/wikipedia/gallery/MediaList;)V

    return-void
.end method
