package kr.or.fact.core.model.DTO;

import lombok.Data;

@Data
public class EnvInfoVO {
    InternalEnvVO internalEnvVO;
    ExternalEnvVO externalEnvVO;
    RootZoneEnvVO rootZoneEnvVO;
}