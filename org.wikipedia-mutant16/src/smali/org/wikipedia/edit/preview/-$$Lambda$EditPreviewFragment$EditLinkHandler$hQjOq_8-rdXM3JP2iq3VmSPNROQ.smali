.class public final synthetic Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$hQjOq_8-rdXM3JP2iq3VmSPNROQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$hQjOq_8-rdXM3JP2iq3VmSPNROQ;->f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    iput-object p2, p0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$hQjOq_8-rdXM3JP2iq3VmSPNROQ;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$hQjOq_8-rdXM3JP2iq3VmSPNROQ;->f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    iget-object v1, p0, Lorg/wikipedia/edit/preview/-$$Lambda$EditPreviewFragment$EditLinkHandler$hQjOq_8-rdXM3JP2iq3VmSPNROQ;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->lambda$onExternalLinkClicked$1$EditPreviewFragment$EditLinkHandler(Landroid/net/Uri;)V

    return-void
.end method
