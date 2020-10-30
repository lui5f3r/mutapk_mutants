.class public final synthetic Lorg/wikipedia/settings/-$$Lambda$PreferenceLoaderFragment$FA9cfxhMgV45Ik-LR3lhmbhvz0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/settings/PreferenceLoaderFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/PreferenceLoaderFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/settings/-$$Lambda$PreferenceLoaderFragment$FA9cfxhMgV45Ik-LR3lhmbhvz0E;->f$0:Lorg/wikipedia/settings/PreferenceLoaderFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/settings/-$$Lambda$PreferenceLoaderFragment$FA9cfxhMgV45Ik-LR3lhmbhvz0E;->f$0:Lorg/wikipedia/settings/PreferenceLoaderFragment;

    invoke-virtual {v0}, Lorg/wikipedia/settings/PreferenceLoaderFragment;->lambda$onCreatePreferences$0$PreferenceLoaderFragment()V

    return-void
.end method
