.class public final synthetic Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$EwQDgsoLj0Vu4oEKYGFeegMlV9s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$EwQDgsoLj0Vu4oEKYGFeegMlV9s;->f$0:Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/settings/-$$Lambda$DeveloperSettingsPreferenceLoader$EwQDgsoLj0Vu4oEKYGFeegMlV9s;->f$0:Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;

    check-cast p1, Lorg/wikipedia/dataclient/page/PageSummary;

    invoke-virtual {v0, p1}, Lorg/wikipedia/settings/DeveloperSettingsPreferenceLoader;->lambda$null$7$DeveloperSettingsPreferenceLoader(Lorg/wikipedia/dataclient/page/PageSummary;)V

    return-void
.end method
