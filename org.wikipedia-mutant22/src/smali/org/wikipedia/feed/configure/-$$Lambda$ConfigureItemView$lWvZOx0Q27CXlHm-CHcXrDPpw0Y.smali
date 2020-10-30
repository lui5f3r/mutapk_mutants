.class public final synthetic Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureItemView$lWvZOx0Q27CXlHm-CHcXrDPpw0Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/feed/configure/ConfigureItemView;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/configure/ConfigureItemView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureItemView$lWvZOx0Q27CXlHm-CHcXrDPpw0Y;->f$0:Lorg/wikipedia/feed/configure/ConfigureItemView;

    iput-object p2, p0, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureItemView$lWvZOx0Q27CXlHm-CHcXrDPpw0Y;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureItemView$lWvZOx0Q27CXlHm-CHcXrDPpw0Y;->f$0:Lorg/wikipedia/feed/configure/ConfigureItemView;

    iget-object v1, p0, Lorg/wikipedia/feed/configure/-$$Lambda$ConfigureItemView$lWvZOx0Q27CXlHm-CHcXrDPpw0Y;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lorg/wikipedia/feed/configure/ConfigureItemView;->lambda$showLangSelectDialog$0$ConfigureItemView(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
