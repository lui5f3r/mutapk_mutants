.class public final synthetic Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$3iaC4D-V1gOSnFr5Gof7CHxjTmU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/gallery/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/gallery/GalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$3iaC4D-V1gOSnFr5Gof7CHxjTmU;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/gallery/-$$Lambda$GalleryActivity$3iaC4D-V1gOSnFr5Gof7CHxjTmU;->f$0:Lorg/wikipedia/gallery/GalleryActivity;

    invoke-virtual {v0}, Lorg/wikipedia/gallery/GalleryActivity;->lambda$hideTransitionReceiver$5$GalleryActivity()V

    return-void
.end method