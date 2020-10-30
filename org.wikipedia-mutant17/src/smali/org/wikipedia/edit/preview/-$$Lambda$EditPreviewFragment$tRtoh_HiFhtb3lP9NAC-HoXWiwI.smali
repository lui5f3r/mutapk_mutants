.class public final synthetic Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$tRtoh_HiFhtb3lP9NAC-HoXWiwI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$tRtoh_HiFhtb3lP9NAC-HoXWiwI;->f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$tRtoh_HiFhtb3lP9NAC-HoXWiwI;->f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    invoke-virtual {v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->lambda$showPreview$2$EditPreviewFragment()V

    return-void
.end method
