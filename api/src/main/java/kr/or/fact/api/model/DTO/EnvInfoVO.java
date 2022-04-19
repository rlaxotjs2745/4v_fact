package kr.or.fact.api.model.DTO;

import lombok.Data;

@Data
public class EnvInfoVO {
    InternalEnvVO internalEnvVO;
    ExternalEnvVO externalEnvVO;
    RootZoneEnvVO rootZoneEnvVO;
}